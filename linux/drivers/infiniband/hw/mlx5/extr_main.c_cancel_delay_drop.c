
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int delay_drop_work; } ;
struct TYPE_4__ {int raw_packet_caps; } ;
struct TYPE_5__ {TYPE_1__ attrs; } ;
struct mlx5_ib_dev {TYPE_3__ delay_drop; TYPE_2__ ib_dev; } ;


 int IB_RAW_PACKET_CAP_DELAY_DROP ;
 int cancel_work_sync (int *) ;
 int delay_drop_debugfs_cleanup (struct mlx5_ib_dev*) ;

__attribute__((used)) static void cancel_delay_drop(struct mlx5_ib_dev *dev)
{
 if (!(dev->ib_dev.attrs.raw_packet_caps & IB_RAW_PACKET_CAP_DELAY_DROP))
  return;

 cancel_work_sync(&dev->delay_drop.delay_drop_work);
 delay_drop_debugfs_cleanup(dev);
}
