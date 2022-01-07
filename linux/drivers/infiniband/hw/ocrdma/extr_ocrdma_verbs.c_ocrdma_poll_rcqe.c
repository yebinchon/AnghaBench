
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {scalar_t__ qp_type; } ;
struct ocrdma_cqe {int flags_status_srcqpn; } ;
struct ib_wc {scalar_t__ wc_flags; } ;


 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_UD ;
 int OCRDMA_CQE_STATUS_MASK ;
 int OCRDMA_CQE_STATUS_SHIFT ;
 int OCRDMA_CQE_SUCCESS ;
 int OCRDMA_CQE_UD_STATUS_MASK ;
 int OCRDMA_CQE_UD_STATUS_SHIFT ;
 int le32_to_cpu (int ) ;
 int ocrdma_poll_err_rcqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*,int) ;
 int ocrdma_poll_success_rcqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*) ;

__attribute__((used)) static bool ocrdma_poll_rcqe(struct ocrdma_qp *qp, struct ocrdma_cqe *cqe,
        struct ib_wc *ibwc, bool *polled, bool *stop)
{
 int status;
 bool expand = 0;

 ibwc->wc_flags = 0;
 if (qp->qp_type == IB_QPT_UD || qp->qp_type == IB_QPT_GSI) {
  status = (le32_to_cpu(cqe->flags_status_srcqpn) &
     OCRDMA_CQE_UD_STATUS_MASK) >>
     OCRDMA_CQE_UD_STATUS_SHIFT;
 } else {
  status = (le32_to_cpu(cqe->flags_status_srcqpn) &
        OCRDMA_CQE_STATUS_MASK) >> OCRDMA_CQE_STATUS_SHIFT;
 }

 if (status == OCRDMA_CQE_SUCCESS) {
  *polled = 1;
  ocrdma_poll_success_rcqe(qp, cqe, ibwc);
 } else {
  expand = ocrdma_poll_err_rcqe(qp, cqe, ibwc, polled, stop,
           status);
 }
 return expand;
}
