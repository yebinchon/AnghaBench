
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct ib_port_immutable {int core_cap_flags; int gid_tbl_len; int pkey_tbl_len; void* max_mad_size; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int flags; int flags2; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 void* IB_MGMT_MAD_SIZE ;
 int MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 ;
 int MLX4_DEV_CAP_FLAG_IBOE ;
 int RDMA_CORE_PORT_IBA_IB ;
 int RDMA_CORE_PORT_IBA_ROCE ;
 int RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP ;
 int RDMA_CORE_PORT_RAW_PACKET ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 scalar_t__ mlx4_ib_port_link_layer (struct ib_device*,int ) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx4_port_immutable(struct ib_device *ibdev, u8 port_num,
          struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 struct mlx4_ib_dev *mdev = to_mdev(ibdev);
 int err;

 if (mlx4_ib_port_link_layer(ibdev, port_num) == IB_LINK_LAYER_INFINIBAND) {
  immutable->core_cap_flags = RDMA_CORE_PORT_IBA_IB;
  immutable->max_mad_size = IB_MGMT_MAD_SIZE;
 } else {
  if (mdev->dev->caps.flags & MLX4_DEV_CAP_FLAG_IBOE)
   immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE;
  if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_ROCE_V1_V2)
   immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE |
    RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;
  immutable->core_cap_flags |= RDMA_CORE_PORT_RAW_PACKET;
  if (immutable->core_cap_flags & (RDMA_CORE_PORT_IBA_ROCE |
      RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP))
   immutable->max_mad_size = IB_MGMT_MAD_SIZE;
 }

 err = ib_query_port(ibdev, port_num, &attr);
 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;

 return 0;
}
