
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int ack_seq; int seq; } ;
struct TYPE_2__ {scalar_t__ loc_seq_num; scalar_t__ rcv_nxt; scalar_t__ rcv_wnd; } ;
struct i40iw_cm_node {TYPE_1__ tcp_cntxt; } ;


 int between (scalar_t__,scalar_t__,scalar_t__) ;
 int i40iw_indicate_pkt_err (struct i40iw_cm_node*) ;
 int i40iw_pr_err (char*) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int i40iw_check_seq(struct i40iw_cm_node *cm_node, struct tcphdr *tcph)
{
 int err = 0;
 u32 seq;
 u32 ack_seq;
 u32 loc_seq_num = cm_node->tcp_cntxt.loc_seq_num;
 u32 rcv_nxt = cm_node->tcp_cntxt.rcv_nxt;
 u32 rcv_wnd;

 seq = ntohl(tcph->seq);
 ack_seq = ntohl(tcph->ack_seq);
 rcv_wnd = cm_node->tcp_cntxt.rcv_wnd;
 if (ack_seq != loc_seq_num)
  err = -1;
 else if (!between(seq, rcv_nxt, (rcv_nxt + rcv_wnd)))
  err = -1;
 if (err) {
  i40iw_pr_err("seq number\n");
  i40iw_indicate_pkt_err(cm_node);
 }
 return err;
}
