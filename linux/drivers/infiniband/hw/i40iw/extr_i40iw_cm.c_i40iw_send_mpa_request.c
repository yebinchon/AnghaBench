
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i40iw_puda_buf {int dummy; } ;
struct TYPE_3__ {int size; int * addr; } ;
struct i40iw_cm_node {int pdata; TYPE_1__ mpa_hdr; int mpa_frame; } ;


 int I40IW_TIMER_TYPE_SEND ;
 int MPA_KEY_REQUEST ;
 int SET_ACK ;
 int i40iw_cm_build_mpa_frame (struct i40iw_cm_node*,TYPE_1__*,int ) ;
 struct i40iw_puda_buf* i40iw_form_cm_frame (struct i40iw_cm_node*,int *,TYPE_1__*,int *,int ) ;
 int i40iw_pr_err (char*,...) ;
 int i40iw_schedule_cm_timer (struct i40iw_cm_node*,struct i40iw_puda_buf*,int ,int,int ) ;

__attribute__((used)) static int i40iw_send_mpa_request(struct i40iw_cm_node *cm_node)
{
 struct i40iw_puda_buf *sqbuf;

 if (!cm_node) {
  i40iw_pr_err("cm_node == NULL\n");
  return -1;
 }

 cm_node->mpa_hdr.addr = &cm_node->mpa_frame;
 cm_node->mpa_hdr.size = i40iw_cm_build_mpa_frame(cm_node,
        &cm_node->mpa_hdr,
        MPA_KEY_REQUEST);
 if (!cm_node->mpa_hdr.size) {
  i40iw_pr_err("mpa size = %d\n", cm_node->mpa_hdr.size);
  return -1;
 }

 sqbuf = i40iw_form_cm_frame(cm_node,
        ((void*)0),
        &cm_node->mpa_hdr,
        &cm_node->pdata,
        SET_ACK);
 if (!sqbuf) {
  i40iw_pr_err("sq_buf == NULL\n");
  return -1;
 }
 return i40iw_schedule_cm_timer(cm_node, sqbuf, I40IW_TIMER_TYPE_SEND, 1, 0);
}
