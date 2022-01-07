
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct tcphdr {int doff; int ack_seq; int seq; } ;
struct i40iw_puda_buf {scalar_t__ tcph; } ;
struct TYPE_2__ {void* loc_seq_num; int rcv_nxt; void* rem_ack_num; } ;
struct i40iw_cm_node {int state; int ref_count; TYPE_1__ tcp_cntxt; int dev; } ;
 int I40IW_DEBUG_CM ;
 int atomic_inc (int *) ;
 int i40iw_check_syn (struct i40iw_cm_node*,struct tcphdr*) ;
 int i40iw_cleanup_retrans_entry (struct i40iw_cm_node*) ;
 int i40iw_debug (int ,int ,char*,struct i40iw_cm_node*) ;
 int i40iw_handle_tcp_options (struct i40iw_cm_node*,struct tcphdr*,int,int ) ;
 int i40iw_passive_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_pr_err (char*) ;
 int i40iw_send_ack (struct i40iw_cm_node*) ;
 int i40iw_send_mpa_request (struct i40iw_cm_node*) ;
 int i40iw_send_reset (struct i40iw_cm_node*) ;
 void* ntohl (int ) ;

__attribute__((used)) static void i40iw_handle_synack_pkt(struct i40iw_cm_node *cm_node,
        struct i40iw_puda_buf *rbuf)
{
 struct tcphdr *tcph = (struct tcphdr *)rbuf->tcph;
 int ret;
 u32 inc_sequence;
 int optionsize;

 optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);
 inc_sequence = ntohl(tcph->seq);
 switch (cm_node->state) {
 case 129:
  i40iw_cleanup_retrans_entry(cm_node);

  if (i40iw_check_syn(cm_node, tcph)) {
   i40iw_pr_err("check syn fail\n");
   return;
  }
  cm_node->tcp_cntxt.rem_ack_num = ntohl(tcph->ack_seq);

  ret = i40iw_handle_tcp_options(cm_node, tcph, optionsize, 0);
  if (ret) {
   i40iw_debug(cm_node->dev,
        I40IW_DEBUG_CM,
        "cm_node=%p tcp_options failed\n",
        cm_node);
   break;
  }
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
  i40iw_send_ack(cm_node);
  ret = i40iw_send_mpa_request(cm_node);
  if (ret) {
   i40iw_debug(cm_node->dev,
        I40IW_DEBUG_CM,
        "cm_node=%p i40iw_send_mpa_request failed\n",
        cm_node);
   break;
  }
  cm_node->state = 131;
  break;
 case 132:
  i40iw_passive_open_err(cm_node, 1);
  break;
 case 133:
  cm_node->tcp_cntxt.loc_seq_num = ntohl(tcph->ack_seq);
  i40iw_cleanup_retrans_entry(cm_node);
  cm_node->state = 139;
  i40iw_send_reset(cm_node);
  break;
 case 139:
  cm_node->tcp_cntxt.loc_seq_num = ntohl(tcph->ack_seq);
  i40iw_cleanup_retrans_entry(cm_node);
  atomic_inc(&cm_node->ref_count);
  i40iw_send_reset(cm_node);
  break;
 case 137:
 case 136:
 case 135:
 case 134:
 case 130:
 case 138:
 case 128:
 case 131:
 default:
  break;
 }
}
