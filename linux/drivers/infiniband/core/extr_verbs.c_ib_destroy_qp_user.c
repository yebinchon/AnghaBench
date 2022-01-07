
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_srq {int usecnt; } ;
struct ib_rwq_ind_table {int usecnt; } ;
struct ib_qp_security {int dummy; } ;
struct ib_qp {scalar_t__ mrs_used; TYPE_2__* device; int res; int uobject; struct ib_qp_security* qp_sec; struct ib_rwq_ind_table* rwq_ind_tbl; struct ib_srq* srq; struct ib_cq* recv_cq; struct ib_cq* send_cq; struct ib_pd* pd; struct ib_qp* real_qp; int usecnt; struct ib_gid_attr* av_sgid_attr; struct ib_gid_attr* alt_path_sgid_attr; } ;
struct ib_pd {int usecnt; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_cq {int usecnt; } ;
struct TYPE_3__ {int (* destroy_qp ) (struct ib_qp*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 int __ib_destroy_shared_qp (struct ib_qp*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ib_destroy_qp_security_abort (struct ib_qp_security*) ;
 int ib_destroy_qp_security_begin (struct ib_qp_security*) ;
 int ib_destroy_qp_security_end (struct ib_qp_security*) ;
 int rdma_counter_unbind_qp (struct ib_qp*,int) ;
 int rdma_put_gid_attr (struct ib_gid_attr const*) ;
 int rdma_restrack_del (int *) ;
 int rdma_rw_cleanup_mrs (struct ib_qp*) ;
 int stub1 (struct ib_qp*,struct ib_udata*) ;

int ib_destroy_qp_user(struct ib_qp *qp, struct ib_udata *udata)
{
 const struct ib_gid_attr *alt_path_sgid_attr = qp->alt_path_sgid_attr;
 const struct ib_gid_attr *av_sgid_attr = qp->av_sgid_attr;
 struct ib_pd *pd;
 struct ib_cq *scq, *rcq;
 struct ib_srq *srq;
 struct ib_rwq_ind_table *ind_tbl;
 struct ib_qp_security *sec;
 int ret;

 WARN_ON_ONCE(qp->mrs_used > 0);

 if (atomic_read(&qp->usecnt))
  return -EBUSY;

 if (qp->real_qp != qp)
  return __ib_destroy_shared_qp(qp);

 pd = qp->pd;
 scq = qp->send_cq;
 rcq = qp->recv_cq;
 srq = qp->srq;
 ind_tbl = qp->rwq_ind_tbl;
 sec = qp->qp_sec;
 if (sec)
  ib_destroy_qp_security_begin(sec);

 if (!qp->uobject)
  rdma_rw_cleanup_mrs(qp);

 rdma_counter_unbind_qp(qp, 1);
 rdma_restrack_del(&qp->res);
 ret = qp->device->ops.destroy_qp(qp, udata);
 if (!ret) {
  if (alt_path_sgid_attr)
   rdma_put_gid_attr(alt_path_sgid_attr);
  if (av_sgid_attr)
   rdma_put_gid_attr(av_sgid_attr);
  if (pd)
   atomic_dec(&pd->usecnt);
  if (scq)
   atomic_dec(&scq->usecnt);
  if (rcq)
   atomic_dec(&rcq->usecnt);
  if (srq)
   atomic_dec(&srq->usecnt);
  if (ind_tbl)
   atomic_dec(&ind_tbl->usecnt);
  if (sec)
   ib_destroy_qp_security_end(sec);
 } else {
  if (sec)
   ib_destroy_qp_security_abort(sec);
 }

 return ret;
}
