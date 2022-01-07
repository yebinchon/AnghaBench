
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usnic_ib_qp_grp {TYPE_2__* vf; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int port_num; int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pf; } ;
struct TYPE_3__ {int usdev_lock; } ;


 int EINVAL ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_qp_grp* to_uqp_grp (struct ib_qp*) ;
 int usnic_dbg (char*) ;
 int usnic_err (char*,int) ;
 int usnic_ib_qp_grp_modify (struct usnic_ib_qp_grp*,int ,int *) ;

int usnic_ib_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
    int attr_mask, struct ib_udata *udata)
{
 struct usnic_ib_qp_grp *qp_grp;
 int status;
 usnic_dbg("\n");

 qp_grp = to_uqp_grp(ibqp);

 mutex_lock(&qp_grp->vf->pf->usdev_lock);
 if ((attr_mask & IB_QP_PORT) && attr->port_num != 1) {

  status = -EINVAL;
  goto out_unlock;
 }
 if (attr_mask & IB_QP_STATE) {
  status = usnic_ib_qp_grp_modify(qp_grp, attr->qp_state, ((void*)0));
 } else {
  usnic_err("Unhandled request, attr_mask=0x%x\n", attr_mask);
  status = -EINVAL;
 }

out_unlock:
 mutex_unlock(&qp_grp->vf->pf->usdev_lock);
 return status;
}
