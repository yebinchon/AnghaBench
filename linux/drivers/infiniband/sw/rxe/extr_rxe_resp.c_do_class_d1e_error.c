
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int drop_msg; int opcode; int * mr; TYPE_2__* wqe; int status; } ;
struct rxe_qp {TYPE_3__ resp; scalar_t__ srq; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;
struct TYPE_4__ {scalar_t__ sge_offset; scalar_t__ cur_sge; int length; int resid; } ;
struct TYPE_5__ {TYPE_1__ dma; } ;


 int IB_WC_REM_INV_REQ_ERR ;
 int RESPST_CLEANUP ;
 int RESPST_COMPLETE ;
 int rxe_drop_ref (int *) ;

__attribute__((used)) static enum resp_states do_class_d1e_error(struct rxe_qp *qp)
{

 if (qp->srq) {

  qp->resp.drop_msg = 1;
  if (qp->resp.wqe) {
   qp->resp.status = IB_WC_REM_INV_REQ_ERR;
   return RESPST_COMPLETE;
  } else {
   return RESPST_CLEANUP;
  }
 } else {





  if (qp->resp.wqe) {
   qp->resp.wqe->dma.resid = qp->resp.wqe->dma.length;
   qp->resp.wqe->dma.cur_sge = 0;
   qp->resp.wqe->dma.sge_offset = 0;
   qp->resp.opcode = -1;
  }

  if (qp->resp.mr) {
   rxe_drop_ref(qp->resp.mr);
   qp->resp.mr = ((void*)0);
  }

  return RESPST_CLEANUP;
 }
}
