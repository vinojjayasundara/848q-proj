#!/bin/bash

#SBATCH --job-name=split_rule_b
#SBATCH --output=logs/split_rule_b.out.%j
#SBATCH --error=logs/split_rule_b.out.%j
#SBATCH --time=24:00:00
#SBATCH --qos=default
#SBATCH --gres=gpu:rtxa6000:1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G

module load cuda/11.0.3

srun bash -c "hostname;"
srun bash -c "python models.py --split_rule last-b --batch_size 32 --train_guesser;"
