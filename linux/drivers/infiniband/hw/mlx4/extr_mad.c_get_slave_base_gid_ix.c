
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int dev; int ib_dev; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 int mlx4_get_base_gid_ix (int ,int,int) ;
 scalar_t__ rdma_port_get_link_layer (int *,int) ;

__attribute__((used)) static int get_slave_base_gid_ix(struct mlx4_ib_dev *dev, int slave, int port)
{
 if (rdma_port_get_link_layer(&dev->ib_dev, port) == IB_LINK_LAYER_INFINIBAND)
  return slave;
 return mlx4_get_base_gid_ix(dev->dev, slave, port);
}
