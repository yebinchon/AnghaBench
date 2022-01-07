
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int doff; int seq; } ;
struct i40iw_puda_buf {scalar_t__ tcph; } ;
struct TYPE_5__ {int rcv_nxt; } ;
struct i40iw_cm_node {int state; int accept_pend; int qhash_set; int ref_count; int iwdev; TYPE_3__* listener; TYPE_2__ tcp_cntxt; TYPE_1__* cm_core; } ;
struct i40iw_cm_info {int dummy; } ;
struct TYPE_6__ {int pend_accepts_cnt; int backlog; } ;
struct TYPE_4__ {int stats_backlog_drops; } ;
 int I40IW_CM_STATE_SYN_RCVD ;


 int I40IW_QHASH_MANAGE_TYPE_ADD ;
 int I40IW_QHASH_TYPE_TCP_ESTABLISHED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int i40iw_active_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_cleanup_retrans_entry (struct i40iw_cm_node*) ;
 int i40iw_get_addr_info (struct i40iw_cm_node*,struct i40iw_cm_info*) ;
 int i40iw_handle_tcp_options (struct i40iw_cm_node*,struct tcphdr*,int,int) ;
 int i40iw_manage_qhash (int ,struct i40iw_cm_info*,int ,int ,void*,int) ;
 int i40iw_passive_open_err (struct i40iw_cm_node*,int) ;
 int i40iw_send_reset (struct i40iw_cm_node*) ;
 int ntohl (int ) ;

__attribute__((used)) static void i40iw_handle_syn_pkt(struct i40iw_cm_node *cm_node,
     struct i40iw_puda_buf *rbuf)
{
 struct tcphdr *tcph = (struct tcphdr *)rbuf->tcph;
 int ret;
 u32 inc_sequence;
 int optionsize;
 struct i40iw_cm_info nfo;

 optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);
 inc_sequence = ntohl(tcph->seq);

 switch (cm_node->state) {
 case 129:
 case 131:

  i40iw_active_open_err(cm_node, 1);
  break;
 case 133:

  if (atomic_read(&cm_node->listener->pend_accepts_cnt) >
      cm_node->listener->backlog) {
   cm_node->cm_core->stats_backlog_drops++;
   i40iw_passive_open_err(cm_node, 0);
   break;
  }
  ret = i40iw_handle_tcp_options(cm_node, tcph, optionsize, 1);
  if (ret) {
   i40iw_passive_open_err(cm_node, 0);

   break;
  }
  cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
  cm_node->accept_pend = 1;
  atomic_inc(&cm_node->listener->pend_accepts_cnt);

  cm_node->state = I40IW_CM_STATE_SYN_RCVD;
  i40iw_get_addr_info(cm_node, &nfo);
  ret = i40iw_manage_qhash(cm_node->iwdev,
      &nfo,
      I40IW_QHASH_TYPE_TCP_ESTABLISHED,
      I40IW_QHASH_MANAGE_TYPE_ADD,
      (void *)cm_node,
      0);
  cm_node->qhash_set = 1;
  break;
 case 139:
  i40iw_cleanup_retrans_entry(cm_node);
  atomic_inc(&cm_node->ref_count);
  i40iw_send_reset(cm_node);
  break;
 case 130:
 case 137:
 case 136:
 case 135:
 case 132:
 case 134:
 case 138:
 case 128:
 default:
  break;
 }
}
