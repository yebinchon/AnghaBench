
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct ocrdma_qp {scalar_t__ sq_cq; scalar_t__ rq_cq; int srq; TYPE_1__ ibqp; } ;
struct ocrdma_dev {int * cqe_err_stats; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;


 int OCRDMA_CQE_WR_FLUSH_ERR ;
 int OCRDMA_MAX_CQE_ERR ;
 int atomic_inc (int *) ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 scalar_t__ is_hw_rq_empty (struct ocrdma_qp*) ;
 int is_hw_sq_empty (struct ocrdma_qp*) ;
 int ocrdma_update_err_rcqe (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ;
 int ocrdma_update_err_scqe (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ;

__attribute__((used)) static bool ocrdma_poll_err_rcqe(struct ocrdma_qp *qp, struct ocrdma_cqe *cqe,
    struct ib_wc *ibwc, bool *polled, bool *stop,
    int status)
{
 bool expand;
 struct ocrdma_dev *dev = get_ocrdma_dev(qp->ibqp.device);

 if (status < OCRDMA_MAX_CQE_ERR)
  atomic_inc(&dev->cqe_err_stats[status]);




 if (is_hw_rq_empty(qp) && !is_hw_sq_empty(qp)) {
  if (!qp->srq && (qp->sq_cq == qp->rq_cq)) {
   *polled = 1;
   status = OCRDMA_CQE_WR_FLUSH_ERR;
   expand = ocrdma_update_err_scqe(ibwc, cqe, qp, status);
  } else {
   *polled = 0;
   *stop = 1;
   expand = 0;
  }
 } else if (is_hw_rq_empty(qp)) {

  expand = 0;
  *polled = 0;
  *stop = 0;
 } else {
  *polled = 1;
  expand = ocrdma_update_err_rcqe(ibwc, cqe, qp, status);
 }
 return expand;
}
