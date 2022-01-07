
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_vsi {int ilq; } ;
struct i40iw_puda_buf {int dummy; } ;
struct i40iw_cm_node {TYPE_1__* iwdev; } ;
struct TYPE_2__ {struct i40iw_sc_vsi vsi; } ;


 int SET_ACK ;
 struct i40iw_puda_buf* i40iw_form_cm_frame (struct i40iw_cm_node*,int *,int *,int *,int ) ;
 int i40iw_pr_err (char*) ;
 int i40iw_puda_send_buf (int ,struct i40iw_puda_buf*) ;

__attribute__((used)) static void i40iw_send_ack(struct i40iw_cm_node *cm_node)
{
 struct i40iw_puda_buf *sqbuf;
 struct i40iw_sc_vsi *vsi = &cm_node->iwdev->vsi;

 sqbuf = i40iw_form_cm_frame(cm_node, ((void*)0), ((void*)0), ((void*)0), SET_ACK);
 if (sqbuf)
  i40iw_puda_send_buf(vsi->ilq, sqbuf);
 else
  i40iw_pr_err("no sqbuf\n");
}
