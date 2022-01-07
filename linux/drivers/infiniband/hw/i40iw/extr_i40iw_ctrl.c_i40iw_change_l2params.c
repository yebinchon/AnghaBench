
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40iw_sc_vsi {scalar_t__ mtu; TYPE_1__* qos; struct i40iw_sc_dev* dev; } ;
struct i40iw_sc_qp {scalar_t__ qs_handle; } ;
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_l2params {scalar_t__ mtu; scalar_t__* qs_handle_list; } ;
struct TYPE_2__ {scalar_t__ qs_handle; int lock; int qplist; } ;


 int I40IW_MAX_USER_PRIORITY ;
 int i40iw_fill_qos_list (scalar_t__*) ;
 struct i40iw_sc_qp* i40iw_get_qp (int *,struct i40iw_sc_qp*) ;
 int i40iw_qp_suspend_resume (struct i40iw_sc_dev*,struct i40iw_sc_qp*,int) ;
 int i40iw_reinitialize_ieq (struct i40iw_sc_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i40iw_change_l2params(struct i40iw_sc_vsi *vsi, struct i40iw_l2params *l2params)
{
 struct i40iw_sc_dev *dev = vsi->dev;
 struct i40iw_sc_qp *qp = ((void*)0);
 bool qs_handle_change = 0;
 unsigned long flags;
 u16 qs_handle;
 int i;

 if (vsi->mtu != l2params->mtu) {
  vsi->mtu = l2params->mtu;
  i40iw_reinitialize_ieq(dev);
 }

 i40iw_fill_qos_list(l2params->qs_handle_list);
 for (i = 0; i < I40IW_MAX_USER_PRIORITY; i++) {
  qs_handle = l2params->qs_handle_list[i];
  if (vsi->qos[i].qs_handle != qs_handle)
   qs_handle_change = 1;
  spin_lock_irqsave(&vsi->qos[i].lock, flags);
  qp = i40iw_get_qp(&vsi->qos[i].qplist, qp);
  while (qp) {
   if (qs_handle_change) {
    qp->qs_handle = qs_handle;

    i40iw_qp_suspend_resume(dev, qp, 1);
   }
   qp = i40iw_get_qp(&vsi->qos[i].qplist, qp);
  }
  spin_unlock_irqrestore(&vsi->qos[i].lock, flags);
  vsi->qos[i].qs_handle = qs_handle;
 }
}
