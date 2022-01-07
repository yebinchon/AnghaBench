
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int dummy; } ;
struct ocrdma_cqe {int flags_status_srcqpn; } ;
struct ib_wc {int dummy; } ;


 int OCRDMA_CQE_STATUS_MASK ;
 int OCRDMA_CQE_STATUS_SHIFT ;
 int OCRDMA_CQE_SUCCESS ;
 int le32_to_cpu (int ) ;
 int ocrdma_poll_err_scqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*) ;
 int ocrdma_poll_success_scqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*) ;

__attribute__((used)) static bool ocrdma_poll_scqe(struct ocrdma_qp *qp, struct ocrdma_cqe *cqe,
        struct ib_wc *ibwc, bool *polled, bool *stop)
{
 int status;
 bool expand;

 status = (le32_to_cpu(cqe->flags_status_srcqpn) &
  OCRDMA_CQE_STATUS_MASK) >> OCRDMA_CQE_STATUS_SHIFT;

 if (status == OCRDMA_CQE_SUCCESS)
  expand = ocrdma_poll_success_scqe(qp, cqe, ibwc, polled);
 else
  expand = ocrdma_poll_err_scqe(qp, cqe, ibwc, polled, stop);
 return expand;
}
