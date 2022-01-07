
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sub_type; int pkt_reformat; TYPE_1__* dev; int modify_hdr; } ;
struct mlx5_ib_flow_action {TYPE_2__ flow_action_raw; } ;
struct TYPE_3__ {int mdev; } ;





 int mlx5_modify_header_dealloc (int ,int ) ;
 int mlx5_packet_reformat_dealloc (int ,int ) ;

void mlx5_ib_destroy_flow_action_raw(struct mlx5_ib_flow_action *maction)
{
 switch (maction->flow_action_raw.sub_type) {
 case 129:
  mlx5_modify_header_dealloc(maction->flow_action_raw.dev->mdev,
        maction->flow_action_raw.modify_hdr);
  break;
 case 128:
  mlx5_packet_reformat_dealloc(maction->flow_action_raw.dev->mdev,
          maction->flow_action_raw.pkt_reformat);
  break;
 case 130:
  break;
 default:
  break;
 }
}
