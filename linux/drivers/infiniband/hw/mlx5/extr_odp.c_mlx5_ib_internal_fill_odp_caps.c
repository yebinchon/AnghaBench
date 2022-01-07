
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xrc_odp_caps; int rc_odp_caps; int ud_odp_caps; } ;
struct ib_odp_caps {int general_caps; TYPE_1__ per_transport_caps; } ;
struct mlx5_ib_dev {int mdev; int odp_max_size; struct ib_odp_caps odp_caps; } ;
struct TYPE_8__ {int srq_receive; int atomic; int read; int write; int receive; int send; } ;
struct TYPE_7__ {int srq_receive; int send; } ;
struct TYPE_6__ {int srq_receive; int atomic; int read; int write; int receive; int send; } ;


 int BIT_ULL (scalar_t__) ;
 int IB_ODP_SUPPORT ;
 int IB_ODP_SUPPORT_ATOMIC ;
 int IB_ODP_SUPPORT_IMPLICIT ;
 int IB_ODP_SUPPORT_READ ;
 int IB_ODP_SUPPORT_RECV ;
 int IB_ODP_SUPPORT_SEND ;
 int IB_ODP_SUPPORT_SRQ_RECV ;
 int IB_ODP_SUPPORT_WRITE ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_CAP_ODP (int ,int ) ;
 scalar_t__ MLX5_MAX_UMR_SHIFT ;
 scalar_t__ PAGE_SHIFT ;
 int U64_MAX ;
 int fixed_buffer_size ;
 int memset (struct ib_odp_caps*,int ,int) ;
 int mlx5_ib_can_use_umr (struct mlx5_ib_dev*,int) ;
 int null_mkey ;
 int pg ;
 TYPE_4__ rc_odp_caps ;
 TYPE_3__ ud_odp_caps ;
 int umr_extended_translation_offset ;
 int umr_indirect_mkey_disabled ;
 TYPE_2__ xrc_odp_caps ;

void mlx5_ib_internal_fill_odp_caps(struct mlx5_ib_dev *dev)
{
 struct ib_odp_caps *caps = &dev->odp_caps;

 memset(caps, 0, sizeof(*caps));

 if (!MLX5_CAP_GEN(dev->mdev, pg) ||
     !mlx5_ib_can_use_umr(dev, 1))
  return;

 caps->general_caps = IB_ODP_SUPPORT;

 if (MLX5_CAP_GEN(dev->mdev, umr_extended_translation_offset))
  dev->odp_max_size = U64_MAX;
 else
  dev->odp_max_size = BIT_ULL(MLX5_MAX_UMR_SHIFT + PAGE_SHIFT);

 if (MLX5_CAP_ODP(dev->mdev, ud_odp_caps.send))
  caps->per_transport_caps.ud_odp_caps |= IB_ODP_SUPPORT_SEND;

 if (MLX5_CAP_ODP(dev->mdev, ud_odp_caps.srq_receive))
  caps->per_transport_caps.ud_odp_caps |= IB_ODP_SUPPORT_SRQ_RECV;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.send))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_SEND;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.receive))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_RECV;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.write))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_WRITE;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.read))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_READ;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.atomic))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_ATOMIC;

 if (MLX5_CAP_ODP(dev->mdev, rc_odp_caps.srq_receive))
  caps->per_transport_caps.rc_odp_caps |= IB_ODP_SUPPORT_SRQ_RECV;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.send))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_SEND;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.receive))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_RECV;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.write))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_WRITE;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.read))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_READ;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.atomic))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_ATOMIC;

 if (MLX5_CAP_ODP(dev->mdev, xrc_odp_caps.srq_receive))
  caps->per_transport_caps.xrc_odp_caps |= IB_ODP_SUPPORT_SRQ_RECV;

 if (MLX5_CAP_GEN(dev->mdev, fixed_buffer_size) &&
     MLX5_CAP_GEN(dev->mdev, null_mkey) &&
     MLX5_CAP_GEN(dev->mdev, umr_extended_translation_offset) &&
     !MLX5_CAP_GEN(dev->mdev, umr_indirect_mkey_disabled))
  caps->general_caps |= IB_ODP_SUPPORT_IMPLICIT;

 return;
}
