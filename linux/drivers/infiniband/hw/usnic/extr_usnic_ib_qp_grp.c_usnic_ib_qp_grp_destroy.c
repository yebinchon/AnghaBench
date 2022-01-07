
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_qp_grp {scalar_t__ state; int res_chunk_list; TYPE_1__* vf; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ IB_QPS_RESET ;
 int WARN_ON (int) ;
 int free_qp_grp_res (int ) ;
 int kfree (struct usnic_ib_qp_grp*) ;
 int lockdep_assert_held (int *) ;
 int qp_grp_and_vf_unbind (struct usnic_ib_qp_grp*) ;
 int release_and_remove_all_flows (struct usnic_ib_qp_grp*) ;
 int usnic_ib_sysfs_qpn_remove (struct usnic_ib_qp_grp*) ;

void usnic_ib_qp_grp_destroy(struct usnic_ib_qp_grp *qp_grp)
{

 WARN_ON(qp_grp->state != IB_QPS_RESET);
 lockdep_assert_held(&qp_grp->vf->lock);

 release_and_remove_all_flows(qp_grp);
 usnic_ib_sysfs_qpn_remove(qp_grp);
 qp_grp_and_vf_unbind(qp_grp);
 free_qp_grp_res(qp_grp->res_chunk_list);
 kfree(qp_grp);
}
