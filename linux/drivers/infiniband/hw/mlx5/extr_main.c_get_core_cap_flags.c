
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_hca_vport_context {scalar_t__ grh_required; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_INFINIBAND ;
 int MLX5_CAP_ROCE (int ,int ) ;
 int MLX5_ROCE_L3_TYPE_IPV4_CAP ;
 int MLX5_ROCE_L3_TYPE_IPV6_CAP ;
 int MLX5_ROCE_VERSION_1_CAP ;
 int MLX5_ROCE_VERSION_2_CAP ;
 int RDMA_CORE_CAP_IB_GRH_REQUIRED ;
 int RDMA_CORE_PORT_IBA_IB ;
 int RDMA_CORE_PORT_IBA_ROCE ;
 int RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP ;
 int RDMA_CORE_PORT_RAW_PACKET ;
 int l3_type ;
 int mlx5_core_mp_enabled (int ) ;
 int mlx5_ib_port_link_layer (struct ib_device*,int) ;
 int roce_version ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static u32 get_core_cap_flags(struct ib_device *ibdev,
         struct mlx5_hca_vport_context *rep)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 enum rdma_link_layer ll = mlx5_ib_port_link_layer(ibdev, 1);
 u8 l3_type_cap = MLX5_CAP_ROCE(dev->mdev, l3_type);
 u8 roce_version_cap = MLX5_CAP_ROCE(dev->mdev, roce_version);
 bool raw_support = !mlx5_core_mp_enabled(dev->mdev);
 u32 ret = 0;

 if (rep->grh_required)
  ret |= RDMA_CORE_CAP_IB_GRH_REQUIRED;

 if (ll == IB_LINK_LAYER_INFINIBAND)
  return ret | RDMA_CORE_PORT_IBA_IB;

 if (raw_support)
  ret |= RDMA_CORE_PORT_RAW_PACKET;

 if (!(l3_type_cap & MLX5_ROCE_L3_TYPE_IPV4_CAP))
  return ret;

 if (!(l3_type_cap & MLX5_ROCE_L3_TYPE_IPV6_CAP))
  return ret;

 if (roce_version_cap & MLX5_ROCE_VERSION_1_CAP)
  ret |= RDMA_CORE_PORT_IBA_ROCE;

 if (roce_version_cap & MLX5_ROCE_VERSION_2_CAP)
  ret |= RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;

 return ret;
}
