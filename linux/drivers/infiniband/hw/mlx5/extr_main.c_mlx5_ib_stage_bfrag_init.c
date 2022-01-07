
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int fp_bfreg; int mdev; int bfreg; } ;


 int mlx5_alloc_bfreg (int ,int *,int,int) ;
 int mlx5_free_bfreg (int ,int *) ;

__attribute__((used)) static int mlx5_ib_stage_bfrag_init(struct mlx5_ib_dev *dev)
{
 int err;

 err = mlx5_alloc_bfreg(dev->mdev, &dev->bfreg, 0, 0);
 if (err)
  return err;

 err = mlx5_alloc_bfreg(dev->mdev, &dev->fp_bfreg, 0, 1);
 if (err)
  mlx5_free_bfreg(dev->mdev, &dev->fp_bfreg);

 return err;
}
