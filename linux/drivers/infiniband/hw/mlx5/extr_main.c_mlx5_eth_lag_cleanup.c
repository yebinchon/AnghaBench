
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {int lag_active; TYPE_1__* flow_db; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int * lag_demux_ft; } ;


 int mlx5_cmd_destroy_vport_lag (struct mlx5_core_dev*) ;
 int mlx5_destroy_flow_table (int *) ;

__attribute__((used)) static void mlx5_eth_lag_cleanup(struct mlx5_ib_dev *dev)
{
 struct mlx5_core_dev *mdev = dev->mdev;

 if (dev->lag_active) {
  dev->lag_active = 0;

  mlx5_destroy_flow_table(dev->flow_db->lag_demux_ft);
  dev->flow_db->lag_demux_ft = ((void*)0);

  mlx5_cmd_destroy_vport_lag(mdev);
 }
}
