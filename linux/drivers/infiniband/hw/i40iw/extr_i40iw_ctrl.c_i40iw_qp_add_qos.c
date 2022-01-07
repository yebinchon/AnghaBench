
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_vsi {TYPE_1__* qos; } ;
struct i40iw_sc_qp {int on_qoslist; size_t user_pri; int list; int qs_handle; struct i40iw_sc_vsi* vsi; } ;
struct TYPE_2__ {int lock; int qplist; int qs_handle; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i40iw_qp_add_qos(struct i40iw_sc_qp *qp)
{
 struct i40iw_sc_vsi *vsi = qp->vsi;
 unsigned long flags;

 if (qp->on_qoslist)
  return;
 spin_lock_irqsave(&vsi->qos[qp->user_pri].lock, flags);
 qp->qs_handle = vsi->qos[qp->user_pri].qs_handle;
 list_add(&qp->list, &vsi->qos[qp->user_pri].qplist);
 qp->on_qoslist = 1;
 spin_unlock_irqrestore(&vsi->qos[qp->user_pri].lock, flags);
}
