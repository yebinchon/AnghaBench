
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct mlx5_ib_dev {TYPE_1__ mdev_events; int mdev; } ;


 int mlx5_ib_event ;
 int mlx5_notifier_register (int ,TYPE_1__*) ;

__attribute__((used)) static int mlx5_ib_stage_dev_notifier_init(struct mlx5_ib_dev *dev)
{
 dev->mdev_events.notifier_call = mlx5_ib_event;
 mlx5_notifier_register(dev->mdev, &dev->mdev_events);
 return 0;
}
