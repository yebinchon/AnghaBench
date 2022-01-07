
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_puda_buf {int dummy; } ;
struct i40iw_cm_node {int dummy; } ;


 int I40IW_TIMER_TYPE_SEND ;
 int SET_ACK ;
 int SET_RST ;
 struct i40iw_puda_buf* i40iw_form_cm_frame (struct i40iw_cm_node*,int *,int *,int *,int) ;
 int i40iw_pr_err (char*) ;
 int i40iw_schedule_cm_timer (struct i40iw_cm_node*,struct i40iw_puda_buf*,int ,int ,int) ;

int i40iw_send_reset(struct i40iw_cm_node *cm_node)
{
 struct i40iw_puda_buf *sqbuf;
 int flags = SET_RST | SET_ACK;

 sqbuf = i40iw_form_cm_frame(cm_node, ((void*)0), ((void*)0), ((void*)0), flags);
 if (!sqbuf) {
  i40iw_pr_err("no sqbuf\n");
  return -1;
 }

 return i40iw_schedule_cm_timer(cm_node, sqbuf, I40IW_TIMER_TYPE_SEND, 0, 1);
}
