
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int tunnel_stateless_geneve_rx ;
 int tunnel_stateless_gre ;
 int tunnel_stateless_vxlan ;

__attribute__((used)) static bool tunnel_offload_supported(struct mlx5_core_dev *dev)
{
 return (MLX5_CAP_ETH(dev, tunnel_stateless_vxlan) ||
   MLX5_CAP_ETH(dev, tunnel_stateless_gre) ||
   MLX5_CAP_ETH(dev, tunnel_stateless_geneve_rx));
}
