
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_ib_dev {TYPE_1__* port; int mdev; } ;
struct mlx5_ib_counters {int dummy; } ;
struct TYPE_2__ {struct mlx5_ib_counters const cnts; } ;


 scalar_t__ is_mdev_switchdev_mode (int ) ;

__attribute__((used)) static const struct mlx5_ib_counters *get_counters(struct mlx5_ib_dev *dev,
         u8 port_num)
{
 return is_mdev_switchdev_mode(dev->mdev) ? &dev->port[0].cnts :
         &dev->port[port_num].cnts;
}
