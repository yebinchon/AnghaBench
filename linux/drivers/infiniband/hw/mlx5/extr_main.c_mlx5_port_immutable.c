
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_hca_vport_context {int member_0; } ;
struct ib_port_immutable {int max_mad_size; int core_cap_flags; int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_INFINIBAND ;
 int IB_MGMT_MAD_SIZE ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int get_core_cap_flags (struct ib_device*,struct mlx5_hca_vport_context*) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mlx5_ib_port_link_layer (struct ib_device*,int ) ;
 int mlx5_query_hca_vport_context (int ,int ,int ,int ,struct mlx5_hca_vport_context*) ;
 int roce ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_port_immutable(struct ib_device *ibdev, u8 port_num,
          struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 enum rdma_link_layer ll = mlx5_ib_port_link_layer(ibdev, port_num);
 struct mlx5_hca_vport_context rep = {0};
 int err;

 err = ib_query_port(ibdev, port_num, &attr);
 if (err)
  return err;

 if (ll == IB_LINK_LAYER_INFINIBAND) {
  err = mlx5_query_hca_vport_context(dev->mdev, 0, port_num, 0,
         &rep);
  if (err)
   return err;
 }

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;
 immutable->core_cap_flags = get_core_cap_flags(ibdev, &rep);
 if ((ll == IB_LINK_LAYER_INFINIBAND) || MLX5_CAP_GEN(dev->mdev, roce))
  immutable->max_mad_size = IB_MGMT_MAD_SIZE;

 return 0;
}
