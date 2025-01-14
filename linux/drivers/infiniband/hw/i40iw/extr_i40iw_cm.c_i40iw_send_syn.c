
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; int shiftcount; int optionnum; } ;
struct TYPE_4__ {int length; int mss; int optionnum; } ;
union all_known_options {int as_end; TYPE_2__ as_windowscale; TYPE_1__ as_mss; } ;
typedef scalar_t__ u32 ;
struct option_windowscale {int dummy; } ;
struct option_mss {int dummy; } ;
struct option_base {int dummy; } ;
struct i40iw_puda_buf {int dummy; } ;
struct i40iw_kmem_info {char* addr; int size; } ;
struct TYPE_6__ {int rcv_wscale; int mss; } ;
struct i40iw_cm_node {TYPE_3__ tcp_cntxt; } ;


 int EINVAL ;
 int I40IW_TIMER_TYPE_SEND ;
 int OPTION_NUMBER_END ;
 int OPTION_NUMBER_MSS ;
 int OPTION_NUMBER_WINDOW_SCALE ;
 int SET_ACK ;
 int SET_SYN ;
 int TCP_OPTIONS_PADDING ;
 int htons (int ) ;
 struct i40iw_puda_buf* i40iw_form_cm_frame (struct i40iw_cm_node*,struct i40iw_kmem_info*,int *,int *,int) ;
 int i40iw_pr_err (char*) ;
 int i40iw_schedule_cm_timer (struct i40iw_cm_node*,struct i40iw_puda_buf*,int ,int,int ) ;

int i40iw_send_syn(struct i40iw_cm_node *cm_node, u32 sendack)
{
 struct i40iw_puda_buf *sqbuf;
 int flags = SET_SYN;
 char optionsbuffer[sizeof(struct option_mss) +
      sizeof(struct option_windowscale) +
      sizeof(struct option_base) + TCP_OPTIONS_PADDING];
 struct i40iw_kmem_info opts;

 int optionssize = 0;

 union all_known_options *options;

 opts.addr = optionsbuffer;
 if (!cm_node) {
  i40iw_pr_err("no cm_node\n");
  return -EINVAL;
 }

 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_mss.optionnum = OPTION_NUMBER_MSS;
 options->as_mss.length = sizeof(struct option_mss);
 options->as_mss.mss = htons(cm_node->tcp_cntxt.mss);
 optionssize += sizeof(struct option_mss);

 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_windowscale.optionnum = OPTION_NUMBER_WINDOW_SCALE;
 options->as_windowscale.length = sizeof(struct option_windowscale);
 options->as_windowscale.shiftcount = cm_node->tcp_cntxt.rcv_wscale;
 optionssize += sizeof(struct option_windowscale);
 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_end = OPTION_NUMBER_END;
 optionssize += 1;

 if (sendack)
  flags |= SET_ACK;

 opts.size = optionssize;

 sqbuf = i40iw_form_cm_frame(cm_node, &opts, ((void*)0), ((void*)0), flags);
 if (!sqbuf) {
  i40iw_pr_err("no sqbuf\n");
  return -1;
 }
 return i40iw_schedule_cm_timer(cm_node, sqbuf, I40IW_TIMER_TYPE_SEND, 1, 0);
}
