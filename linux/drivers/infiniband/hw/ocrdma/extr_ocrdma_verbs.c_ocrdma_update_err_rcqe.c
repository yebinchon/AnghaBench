
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tail; } ;
struct ocrdma_qp {TYPE_1__ rq; int * rqe_wr_id_tbl; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int wr_id; int opcode; } ;


 int IB_WC_RECV ;
 int ocrdma_hwq_inc_tail (TYPE_1__*) ;
 int ocrdma_update_err_cqe (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ;

__attribute__((used)) static int ocrdma_update_err_rcqe(struct ib_wc *ibwc, struct ocrdma_cqe *cqe,
      struct ocrdma_qp *qp, int status)
{
 ibwc->opcode = IB_WC_RECV;
 ibwc->wr_id = qp->rqe_wr_id_tbl[qp->rq.tail];
 ocrdma_hwq_inc_tail(&qp->rq);

 return ocrdma_update_err_cqe(ibwc, cqe, qp, status);
}
