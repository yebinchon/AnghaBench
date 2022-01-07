
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_dev {int num_ports; int mdev; int ib_dev_list; TYPE_2__* port; int ib_dev; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;
struct TYPE_3__ {int * mpi; } ;
struct TYPE_4__ {TYPE_1__ mp; } ;


 int IB_LINK_LAYER_ETHERNET ;
 int kfree (int *) ;
 int list_del (int *) ;
 int mlx5_core_is_mp_master (int ) ;
 int mlx5_core_native_port_num (int ) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,...) ;
 int mlx5_ib_multiport_mutex ;
 int mlx5_ib_port_link_layer (int *,int) ;
 int mlx5_ib_unbind_slave_port (struct mlx5_ib_dev*,int *) ;
 int mlx5_nic_vport_disable_roce (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx5_ib_cleanup_multiport_master(struct mlx5_ib_dev *dev)
{
 int port_num = mlx5_core_native_port_num(dev->mdev) - 1;
 enum rdma_link_layer ll = mlx5_ib_port_link_layer(&dev->ib_dev,
         port_num + 1);
 int i;

 if (!mlx5_core_is_mp_master(dev->mdev) || ll != IB_LINK_LAYER_ETHERNET)
  return;

 mutex_lock(&mlx5_ib_multiport_mutex);
 for (i = 0; i < dev->num_ports; i++) {
  if (dev->port[i].mp.mpi) {

   if (i == port_num) {
    kfree(dev->port[i].mp.mpi);
    dev->port[i].mp.mpi = ((void*)0);
   } else {
    mlx5_ib_dbg(dev, "unbinding port_num: %d\n", i + 1);
    mlx5_ib_unbind_slave_port(dev, dev->port[i].mp.mpi);
   }
  }
 }

 mlx5_ib_dbg(dev, "removing from devlist\n");
 list_del(&dev->ib_dev_list);
 mutex_unlock(&mlx5_ib_multiport_mutex);

 mlx5_nic_vport_disable_roce(dev->mdev);
}
