
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_td; scalar_t__ qps; int enabled; int mutex; } ;
struct mlx5_ib_dev {TYPE_1__ lb; int mdev; } ;


 int mlx5_nic_vport_update_local_lb (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_ib_disable_lb(struct mlx5_ib_dev *dev, bool td, bool qp)
{
 mutex_lock(&dev->lb.mutex);
 if (td)
  dev->lb.user_td--;
 if (qp)
  dev->lb.qps--;

 if (dev->lb.user_td == 1 &&
     dev->lb.qps == 0) {
  if (dev->lb.enabled) {
   mlx5_nic_vport_update_local_lb(dev->mdev, 0);
   dev->lb.enabled = 0;
  }
 }

 mutex_unlock(&dev->lb.mutex);
}
