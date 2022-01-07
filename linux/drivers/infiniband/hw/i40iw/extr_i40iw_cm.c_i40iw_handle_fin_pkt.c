
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rcv_nxt; } ;
struct i40iw_cm_node {int state; TYPE_1__ tcp_cntxt; int ref_count; } ;


 int I40IW_CM_EVENT_ABORTED ;
 void* I40IW_CM_STATE_CLOSED ;
 int I40IW_CM_STATE_CLOSING ;



 int I40IW_CM_STATE_LAST_ACK ;






 int I40IW_TIMER_TYPE_CLOSE ;
 int atomic_inc (int *) ;
 int i40iw_cleanup_retrans_entry (struct i40iw_cm_node*) ;
 int i40iw_create_event (struct i40iw_cm_node*,int ) ;
 int i40iw_pr_err (char*,struct i40iw_cm_node*,int) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int i40iw_schedule_cm_timer (struct i40iw_cm_node*,int *,int ,int,int ) ;
 int i40iw_send_ack (struct i40iw_cm_node*) ;
 int i40iw_send_fin (struct i40iw_cm_node*) ;
 int i40iw_send_reset (struct i40iw_cm_node*) ;

__attribute__((used)) static void i40iw_handle_fin_pkt(struct i40iw_cm_node *cm_node)
{
 u32 ret;

 switch (cm_node->state) {
 case 130:
 case 129:
 case 136:
 case 133:
  cm_node->tcp_cntxt.rcv_nxt++;
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = I40IW_CM_STATE_LAST_ACK;
  i40iw_send_fin(cm_node);
  break;
 case 132:
  i40iw_create_event(cm_node, I40IW_CM_EVENT_ABORTED);
  cm_node->tcp_cntxt.rcv_nxt++;
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = I40IW_CM_STATE_CLOSED;
  atomic_inc(&cm_node->ref_count);
  i40iw_send_reset(cm_node);
  break;
 case 135:
  cm_node->tcp_cntxt.rcv_nxt++;
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = I40IW_CM_STATE_CLOSING;
  i40iw_send_ack(cm_node);





  break;
 case 134:
  cm_node->tcp_cntxt.rcv_nxt++;
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = 128;
  i40iw_send_ack(cm_node);
  ret =
      i40iw_schedule_cm_timer(cm_node, ((void*)0), I40IW_TIMER_TYPE_CLOSE, 1, 0);
  if (ret)
   i40iw_pr_err("node %p state = %d\n", cm_node, cm_node->state);
  break;
 case 128:
  cm_node->tcp_cntxt.rcv_nxt++;
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = I40IW_CM_STATE_CLOSED;
  i40iw_rem_ref_cm_node(cm_node);
  break;
 case 131:
 default:
  i40iw_pr_err("bad state node %p state = %d\n", cm_node, cm_node->state);
  break;
 }
}
