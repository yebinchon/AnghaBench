
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int ack_seq; } ;
struct TYPE_2__ {scalar_t__ loc_seq_num; } ;
struct i40iw_cm_node {TYPE_1__ tcp_cntxt; } ;


 int i40iw_active_open_err (struct i40iw_cm_node*,int) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int i40iw_check_syn(struct i40iw_cm_node *cm_node, struct tcphdr *tcph)
{
 int err = 0;

 if (ntohl(tcph->ack_seq) != cm_node->tcp_cntxt.loc_seq_num) {
  err = 1;
  i40iw_active_open_err(cm_node, 1);
 }
 return err;
}
