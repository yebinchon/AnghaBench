
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev_events; int mdev; } ;


 int mlx5_notifier_unregister (int ,int *) ;

__attribute__((used)) static void mlx5_ib_stage_dev_notifier_cleanup(struct mlx5_ib_dev *dev)
{
 mlx5_notifier_unregister(dev->mdev, &dev->mdev_events);
}
