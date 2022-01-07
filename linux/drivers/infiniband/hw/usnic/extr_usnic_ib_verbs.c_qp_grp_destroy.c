
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_vf {int lock; } ;
struct usnic_ib_qp_grp {scalar_t__ state; struct usnic_ib_vf* vf; } ;


 scalar_t__ IB_QPS_RESET ;
 int WARN_ON (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usnic_ib_qp_grp_destroy (struct usnic_ib_qp_grp*) ;

__attribute__((used)) static void qp_grp_destroy(struct usnic_ib_qp_grp *qp_grp)
{
 struct usnic_ib_vf *vf = qp_grp->vf;

 WARN_ON(qp_grp->state != IB_QPS_RESET);

 spin_lock(&vf->lock);
 usnic_ib_qp_grp_destroy(qp_grp);
 spin_unlock(&vf->lock);
}
