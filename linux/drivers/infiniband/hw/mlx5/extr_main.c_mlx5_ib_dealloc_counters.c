
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_dev {int num_ports; TYPE_2__* port; int mdev; } ;
struct TYPE_3__ {int offsets; int names; int set_id; scalar_t__ set_id_valid; } ;
struct TYPE_4__ {TYPE_1__ cnts; } ;


 scalar_t__ is_mdev_switchdev_mode (int ) ;
 int kfree (int ) ;
 int mlx5_core_dealloc_q_counter (int ,int ) ;

__attribute__((used)) static void mlx5_ib_dealloc_counters(struct mlx5_ib_dev *dev)
{
 int num_cnt_ports;
 int i;

 num_cnt_ports = is_mdev_switchdev_mode(dev->mdev) ? 1 : dev->num_ports;

 for (i = 0; i < num_cnt_ports; i++) {
  if (dev->port[i].cnts.set_id_valid)
   mlx5_core_dealloc_q_counter(dev->mdev,
          dev->port[i].cnts.set_id);
  kfree(dev->port[i].cnts.names);
  kfree(dev->port[i].cnts.offsets);
 }
}
