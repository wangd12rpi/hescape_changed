#!/bin/bash
#SBATCH --job-name=hescape
#SBATCH --output=out.out
#SBATCH --partition=normal                 # partition (queue)
#SBATCH --gres=gpu:nvidia_h100_pcie:2      # request 1 H100 GPU
#SBATCH --cpus-per-task=8                  # CPU cores
#SBATCH --mem=64G                          # memory
#SBATCH --time=00:00:10                    # max walltime (hh:mm:ss)

# ----------------------------
# Environment setup
# ----------------------------
export HF_TOKEN=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

module load anaconda
eval "$(conda shell.bash hook)"
conda activate /home/da304044/miniconda3/envs/gig

# ----------------------------
# Run Python script
# ----------------------------
python train.py
