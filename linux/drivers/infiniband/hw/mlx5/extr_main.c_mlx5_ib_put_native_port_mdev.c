
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mpi_lock; struct mlx5_ib_multiport_info* mpi; } ;
struct mlx5_ib_port {TYPE_1__ mp; } ;
struct mlx5_ib_multiport_info {int unref_comp; scalar_t__ unaffiliate; int mdev_refcnt; scalar_t__ is_master; } ;
struct mlx5_ib_dev {struct mlx5_ib_port* port; int mdev; int ib_dev; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int complete (int *) ;
 int mlx5_core_mp_enabled (int ) ;
 int mlx5_ib_port_link_layer (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx5_ib_put_native_port_mdev(struct mlx5_ib_dev *ibdev, u8 port_num)
{
 enum rdma_link_layer ll = mlx5_ib_port_link_layer(&ibdev->ib_dev,
         port_num);
 struct mlx5_ib_multiport_info *mpi;
 struct mlx5_ib_port *port;

 if (!mlx5_core_mp_enabled(ibdev->mdev) || ll != IB_LINK_LAYER_ETHERNET)
  return;

 port = &ibdev->port[port_num - 1];

 spin_lock(&port->mp.mpi_lock);
 mpi = ibdev->port[port_num - 1].mp.mpi;
 if (mpi->is_master)
  goto out;

 mpi->mdev_refcnt--;
 if (mpi->unaffiliate)
  complete(&mpi->unref_comp);
out:
 spin_unlock(&port->mp.mpi_lock);
}
