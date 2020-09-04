#!/bin/bash
# SLURM SUBMIT SCRIPT
#SBATCH --dependency=singleton
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=0
#SBATCH --time=00:00:02
#SBATCH --signal=SIGUSR1@90
#activate conda env
#conda init bash
#conda activate vdr
#run script from above
srun python sample_05_gpu.py
