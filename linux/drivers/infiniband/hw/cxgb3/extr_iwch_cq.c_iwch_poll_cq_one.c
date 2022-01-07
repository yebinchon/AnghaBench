
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3_cqe {int dummy; } ;
struct iwch_qp {int lock; } ;
struct iwch_dev {int dummy; } ;
struct iwch_cq {int cq; } ;
struct ib_wc {int dummy; } ;


 int CQE_QPID (struct t3_cqe) ;
 int __iwch_poll_cq_one (struct iwch_dev*,struct iwch_cq*,struct iwch_qp*,struct ib_wc*) ;
 struct t3_cqe* cxio_next_cqe (int *) ;
 struct iwch_qp* get_qhp (struct iwch_dev*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iwch_poll_cq_one(struct iwch_dev *rhp, struct iwch_cq *chp,
       struct ib_wc *wc)
{
 struct iwch_qp *qhp;
 struct t3_cqe *rd_cqe;
 int ret;

 rd_cqe = cxio_next_cqe(&chp->cq);

 if (!rd_cqe)
  return 0;

 qhp = get_qhp(rhp, CQE_QPID(*rd_cqe));
 if (qhp) {
  spin_lock(&qhp->lock);
  ret = __iwch_poll_cq_one(rhp, chp, qhp, wc);
  spin_unlock(&qhp->lock);
 } else {
  ret = __iwch_poll_cq_one(rhp, chp, ((void*)0), wc);
 }
 return ret;
}
