
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;


 scalar_t__ IB_LINK_LAYER_ETHERNET ;
 int MLX5_VPORT_ACCESS_METHOD_HCA ;
 int MLX5_VPORT_ACCESS_METHOD_MAD ;
 int MLX5_VPORT_ACCESS_METHOD_NIC ;
 scalar_t__ mlx5_ib_port_link_layer (struct ib_device*,int) ;
 scalar_t__ mlx5_use_mad_ifc (int ) ;
 int to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_get_vport_access_method(struct ib_device *ibdev)
{
 if (mlx5_use_mad_ifc(to_mdev(ibdev)))
  return MLX5_VPORT_ACCESS_METHOD_MAD;

 if (mlx5_ib_port_link_layer(ibdev, 1) ==
     IB_LINK_LAYER_ETHERNET)
  return MLX5_VPORT_ACCESS_METHOD_NIC;

 return MLX5_VPORT_ACCESS_METHOD_HCA;
}
