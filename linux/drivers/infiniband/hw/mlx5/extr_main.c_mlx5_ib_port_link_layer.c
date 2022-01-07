
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int MLX5_CAP_GEN (int ,int ) ;
 int mlx5_port_type_cap_to_rdma_ll (int) ;
 int port_type ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static enum rdma_link_layer
mlx5_ib_port_link_layer(struct ib_device *device, u8 port_num)
{
 struct mlx5_ib_dev *dev = to_mdev(device);
 int port_type_cap = MLX5_CAP_GEN(dev->mdev, port_type);

 return mlx5_port_type_cap_to_rdma_ll(port_type_cap);
}
