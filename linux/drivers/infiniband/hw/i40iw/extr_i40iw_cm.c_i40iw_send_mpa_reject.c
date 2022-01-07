
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i40iw_puda_buf {int dummy; } ;
struct i40iw_kmem_info {int size; void* addr; } ;
struct TYPE_5__ {int size; TYPE_1__* addr; } ;
struct TYPE_4__ {int flags; } ;
struct i40iw_cm_node {int state; TYPE_2__ mpa_hdr; TYPE_1__ mpa_frame; } ;


 int ENOMEM ;
 int I40IW_CM_STATE_FIN_WAIT1 ;
 int I40IW_TIMER_TYPE_SEND ;
 int IETF_MPA_FLAGS_REJECT ;
 int MPA_KEY_REPLY ;
 int SET_ACK ;
 int SET_FIN ;
 int i40iw_cm_build_mpa_frame (struct i40iw_cm_node*,TYPE_2__*,int ) ;
 struct i40iw_puda_buf* i40iw_form_cm_frame (struct i40iw_cm_node*,int *,TYPE_2__*,struct i40iw_kmem_info*,int) ;
 int i40iw_pr_err (char*) ;
 int i40iw_schedule_cm_timer (struct i40iw_cm_node*,struct i40iw_puda_buf*,int ,int,int ) ;

__attribute__((used)) static int i40iw_send_mpa_reject(struct i40iw_cm_node *cm_node,
     const void *pdata,
     u8 plen)
{
 struct i40iw_puda_buf *sqbuf;
 struct i40iw_kmem_info priv_info;

 cm_node->mpa_hdr.addr = &cm_node->mpa_frame;
 cm_node->mpa_hdr.size = i40iw_cm_build_mpa_frame(cm_node,
        &cm_node->mpa_hdr,
        MPA_KEY_REPLY);

 cm_node->mpa_frame.flags |= IETF_MPA_FLAGS_REJECT;
 priv_info.addr = (void *)pdata;
 priv_info.size = plen;

 sqbuf = i40iw_form_cm_frame(cm_node,
        ((void*)0),
        &cm_node->mpa_hdr,
        &priv_info,
        SET_ACK | SET_FIN);
 if (!sqbuf) {
  i40iw_pr_err("no sqbuf\n");
  return -ENOMEM;
 }
 cm_node->state = I40IW_CM_STATE_FIN_WAIT1;
 return i40iw_schedule_cm_timer(cm_node, sqbuf, I40IW_TIMER_TYPE_SEND, 1, 0);
}
