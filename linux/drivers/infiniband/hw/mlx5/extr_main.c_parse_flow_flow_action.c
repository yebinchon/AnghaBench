
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pkt_reformat; int sub_type; int modify_hdr; } ;
struct TYPE_5__ {int ctx; } ;
struct TYPE_4__ {int type; } ;
struct mlx5_ib_flow_action {TYPE_3__ flow_action_raw; TYPE_2__ esp_aes_gcm; TYPE_1__ ib_action; } ;
struct mlx5_flow_act {int action; uintptr_t esp_id; int pkt_reformat; int modify_hdr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int MLX5_FLOW_CONTEXT_ACTION_DECAP ;
 int MLX5_FLOW_CONTEXT_ACTION_DECRYPT ;
 int MLX5_FLOW_CONTEXT_ACTION_ENCRYPT ;
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ;
 int MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT ;
 int MLX5_IB_FLOW_ACTION_DECAP ;
 int MLX5_IB_FLOW_ACTION_MODIFY_HEADER ;
 int MLX5_IB_FLOW_ACTION_PACKET_REFORMAT ;

int parse_flow_flow_action(struct mlx5_ib_flow_action *maction,
      bool is_egress,
      struct mlx5_flow_act *action)
{

 switch (maction->ib_action.type) {
 case 129:
  if (action->action & (MLX5_FLOW_CONTEXT_ACTION_ENCRYPT |
          MLX5_FLOW_CONTEXT_ACTION_DECRYPT))
   return -EINVAL;

  action->esp_id = (uintptr_t)maction->esp_aes_gcm.ctx;
  action->action |= is_egress ?
   MLX5_FLOW_CONTEXT_ACTION_ENCRYPT :
   MLX5_FLOW_CONTEXT_ACTION_DECRYPT;
  return 0;
 case 128:
  if (maction->flow_action_raw.sub_type ==
      MLX5_IB_FLOW_ACTION_MODIFY_HEADER) {
   if (action->action & MLX5_FLOW_CONTEXT_ACTION_MOD_HDR)
    return -EINVAL;
   action->action |= MLX5_FLOW_CONTEXT_ACTION_MOD_HDR;
   action->modify_hdr =
    maction->flow_action_raw.modify_hdr;
   return 0;
  }
  if (maction->flow_action_raw.sub_type ==
      MLX5_IB_FLOW_ACTION_DECAP) {
   if (action->action & MLX5_FLOW_CONTEXT_ACTION_DECAP)
    return -EINVAL;
   action->action |= MLX5_FLOW_CONTEXT_ACTION_DECAP;
   return 0;
  }
  if (maction->flow_action_raw.sub_type ==
      MLX5_IB_FLOW_ACTION_PACKET_REFORMAT) {
   if (action->action &
       MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT)
    return -EINVAL;
   action->action |=
    MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT;
   action->pkt_reformat =
    maction->flow_action_raw.pkt_reformat;
   return 0;
  }

 default:
  return -EOPNOTSUPP;
 }
}
