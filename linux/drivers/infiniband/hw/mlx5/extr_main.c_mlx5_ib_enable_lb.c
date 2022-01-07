
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_td; int qps; int enabled; int mutex; } ;
struct mlx5_ib_dev {TYPE_1__ lb; int mdev; } ;


 int mlx5_nic_vport_update_local_lb (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_ib_enable_lb(struct mlx5_ib_dev *dev, bool td, bool qp)
{
 int err = 0;

 mutex_lock(&dev->lb.mutex);
 if (td)
  dev->lb.user_td++;
 if (qp)
  dev->lb.qps++;

 if (dev->lb.user_td == 2 ||
     dev->lb.qps == 1) {
  if (!dev->lb.enabled) {
   err = mlx5_nic_vport_update_local_lb(dev->mdev, 1);
   dev->lb.enabled = 1;
  }
 }

 mutex_unlock(&dev->lb.mutex);

 return err;
}
