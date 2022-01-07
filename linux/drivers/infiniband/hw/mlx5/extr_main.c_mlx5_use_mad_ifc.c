
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ;
 int ib_virt ;
 int port_type ;

__attribute__((used)) static int mlx5_use_mad_ifc(struct mlx5_ib_dev *dev)
{
 if (MLX5_CAP_GEN(dev->mdev, port_type) == MLX5_CAP_PORT_TYPE_IB)
  return !MLX5_CAP_GEN(dev->mdev, ib_virt);
 return 0;
}
