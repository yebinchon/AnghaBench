
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;
struct c4iw_srq {int lock; } ;
struct c4iw_qp {int lock; struct c4iw_srq* srq; } ;
struct c4iw_cq {int rhp; int cq; } ;


 int CQE_QPID (struct t4_cqe*) ;
 int __c4iw_poll_cq_one (struct c4iw_cq*,struct c4iw_qp*,struct ib_wc*,struct c4iw_srq*) ;
 struct c4iw_qp* get_qhp (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_next_cqe (int *,struct t4_cqe**) ;

__attribute__((used)) static int c4iw_poll_cq_one(struct c4iw_cq *chp, struct ib_wc *wc)
{
 struct c4iw_srq *srq = ((void*)0);
 struct c4iw_qp *qhp = ((void*)0);
 struct t4_cqe *rd_cqe;
 int ret;

 ret = t4_next_cqe(&chp->cq, &rd_cqe);

 if (ret)
  return ret;

 qhp = get_qhp(chp->rhp, CQE_QPID(rd_cqe));
 if (qhp) {
  spin_lock(&qhp->lock);
  srq = qhp->srq;
  if (srq)
   spin_lock(&srq->lock);
  ret = __c4iw_poll_cq_one(chp, qhp, wc, srq);
  spin_unlock(&qhp->lock);
  if (srq)
   spin_unlock(&srq->lock);
 } else {
  ret = __c4iw_poll_cq_one(chp, ((void*)0), wc, ((void*)0));
 }
 return ret;
}
