
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int bfreg; int mdev; int fp_bfreg; } ;


 int mlx5_free_bfreg (int ,int *) ;

__attribute__((used)) static void mlx5_ib_stage_bfrag_cleanup(struct mlx5_ib_dev *dev)
{
 mlx5_free_bfreg(dev->mdev, &dev->fp_bfreg);
 mlx5_free_bfreg(dev->mdev, &dev->bfreg);
}
