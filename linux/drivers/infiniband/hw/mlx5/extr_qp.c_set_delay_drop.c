
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int activate; int rqs_cnt; int lock; int timeout; } ;
struct mlx5_ib_dev {TYPE_1__ delay_drop; int mdev; } ;


 int atomic_inc (int *) ;
 int mlx5_core_set_delay_drop (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int set_delay_drop(struct mlx5_ib_dev *dev)
{
 int err = 0;

 mutex_lock(&dev->delay_drop.lock);
 if (dev->delay_drop.activate)
  goto out;

 err = mlx5_core_set_delay_drop(dev->mdev, dev->delay_drop.timeout);
 if (err)
  goto out;

 dev->delay_drop.activate = 1;
out:
 mutex_unlock(&dev->delay_drop.lock);

 if (!err)
  atomic_inc(&dev->delay_drop.rqs_cnt);
 return err;
}
