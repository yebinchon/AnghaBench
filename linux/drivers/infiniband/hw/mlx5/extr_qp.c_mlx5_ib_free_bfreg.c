
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int lock; int * count; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_ib_free_bfreg(struct mlx5_ib_dev *dev, struct mlx5_bfreg_info *bfregi, int bfregn)
{
 mutex_lock(&bfregi->lock);
 bfregi->count[bfregn]--;
 mutex_unlock(&bfregi->lock);
}
