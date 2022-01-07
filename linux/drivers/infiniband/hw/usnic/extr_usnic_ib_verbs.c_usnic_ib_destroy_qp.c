
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_vf {TYPE_1__* pf; } ;
struct usnic_ib_qp_grp {int link; int grp_id; struct usnic_ib_vf* vf; } ;
struct ib_udata {int dummy; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int usdev_lock; } ;


 int IB_QPS_RESET ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qp_grp_destroy (struct usnic_ib_qp_grp*) ;
 struct usnic_ib_qp_grp* to_uqp_grp (struct ib_qp*) ;
 int usnic_dbg (char*) ;
 int usnic_err (char*,int ) ;
 scalar_t__ usnic_ib_qp_grp_modify (struct usnic_ib_qp_grp*,int ,int *) ;

int usnic_ib_destroy_qp(struct ib_qp *qp, struct ib_udata *udata)
{
 struct usnic_ib_qp_grp *qp_grp;
 struct usnic_ib_vf *vf;

 usnic_dbg("\n");

 qp_grp = to_uqp_grp(qp);
 vf = qp_grp->vf;
 mutex_lock(&vf->pf->usdev_lock);
 if (usnic_ib_qp_grp_modify(qp_grp, IB_QPS_RESET, ((void*)0))) {
  usnic_err("Failed to move qp grp %u to reset\n",
    qp_grp->grp_id);
 }

 list_del(&qp_grp->link);
 qp_grp_destroy(qp_grp);
 mutex_unlock(&vf->pf->usdev_lock);

 return 0;
}
