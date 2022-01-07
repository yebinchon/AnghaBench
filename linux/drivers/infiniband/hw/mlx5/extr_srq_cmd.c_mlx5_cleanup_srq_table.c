
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_table {int nb; } ;
struct mlx5_ib_dev {int mdev; struct mlx5_srq_table srq_table; } ;


 int mlx5_notifier_unregister (int ,int *) ;

void mlx5_cleanup_srq_table(struct mlx5_ib_dev *dev)
{
 struct mlx5_srq_table *table = &dev->srq_table;

 mlx5_notifier_unregister(dev->mdev, &table->nb);
}
