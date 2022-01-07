
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_vsi {TYPE_1__* qos; } ;
struct i40iw_sc_qp {size_t user_pri; int list; int on_qoslist; struct i40iw_sc_vsi* vsi; } ;
struct TYPE_2__ {int lock; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i40iw_qp_rem_qos(struct i40iw_sc_qp *qp)
{
 struct i40iw_sc_vsi *vsi = qp->vsi;
 unsigned long flags;

 if (!qp->on_qoslist)
  return;
 spin_lock_irqsave(&vsi->qos[qp->user_pri].lock, flags);
 list_del(&qp->list);
 spin_unlock_irqrestore(&vsi->qos[qp->user_pri].lock, flags);
}
