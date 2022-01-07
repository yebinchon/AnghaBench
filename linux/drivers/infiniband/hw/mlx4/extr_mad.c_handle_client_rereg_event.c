
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * demux; int is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__* dev; TYPE_2__ sriov; } ;
struct TYPE_6__ {int flags2; } ;
struct TYPE_8__ {int flags; TYPE_1__ caps; } ;


 int IB_EVENT_CLIENT_REREGISTER ;
 int MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT ;
 int MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK ;
 int MLX4_FLAG_SECURE_HOST ;
 int mlx4_gen_slaves_port_mgt_ev (TYPE_3__*,int,int ) ;
 int mlx4_ib_dispatch_event (struct mlx4_ib_dev*,int,int ) ;
 int mlx4_ib_invalidate_all_guid_record (struct mlx4_ib_dev*,int) ;
 int mlx4_ib_mcg_port_cleanup (int *,int ) ;
 int mlx4_ib_sl2vl_update (struct mlx4_ib_dev*,int) ;
 scalar_t__ mlx4_is_master (TYPE_3__*) ;
 int mlx4_is_slave (TYPE_3__*) ;
 int mlx4_sched_ib_sl2vl_update_work (struct mlx4_ib_dev*,int) ;

__attribute__((used)) static void handle_client_rereg_event(struct mlx4_ib_dev *dev, u8 port_num)
{

 if (mlx4_is_master(dev->dev)) {
  mlx4_ib_invalidate_all_guid_record(dev, port_num);

  if (!dev->sriov.is_going_down) {
   mlx4_ib_mcg_port_cleanup(&dev->sriov.demux[port_num - 1], 0);
   mlx4_gen_slaves_port_mgt_ev(dev->dev, port_num,
          MLX4_EQ_PORT_INFO_CLIENT_REREG_MASK);
  }
 }





 if (!mlx4_is_slave(dev->dev) &&
     dev->dev->flags & MLX4_FLAG_SECURE_HOST &&
     !(dev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT)) {
  if (mlx4_is_master(dev->dev))




   mlx4_ib_sl2vl_update(dev, port_num);
  else
   mlx4_sched_ib_sl2vl_update_work(dev, port_num);
 }
 mlx4_ib_dispatch_event(dev, port_num, IB_EVENT_CLIENT_REREGISTER);
}
