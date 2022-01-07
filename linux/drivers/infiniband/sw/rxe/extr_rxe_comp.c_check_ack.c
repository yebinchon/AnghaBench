
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int opcode; } ;
struct rxe_send_wqe {void* status; TYPE_2__ wr; int last_psn; int first_psn; } ;
struct TYPE_8__ {int task; int wait_psn; } ;
struct TYPE_7__ {int opcode; int psn; } ;
struct TYPE_5__ {int device; } ;
struct rxe_qp {TYPE_4__ req; TYPE_3__ comp; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {unsigned int mask; int const opcode; int psn; } ;
struct rxe_dev {int dummy; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;
 int AETH_TYPE_MASK ;
 int COMPST_ATOMIC ;
 int COMPST_ERROR ;
 int COMPST_ERROR_RETRY ;
 int COMPST_READ ;
 int COMPST_RNR_RETRY ;
 int COMPST_WRITE_SEND ;






 void* IB_WC_FATAL_ERR ;
 void* IB_WC_REM_ACCESS_ERR ;
 void* IB_WC_REM_INV_REQ_ERR ;
 void* IB_WC_REM_OP_ERR ;
 int IB_WR_ATOMIC_CMP_AND_SWP ;
 int IB_WR_ATOMIC_FETCH_AND_ADD ;
 int IB_WR_RDMA_READ ;
 int IB_WR_RDMA_READ_WITH_INV ;
 int RXE_CNT_RCV_RNR ;
 int RXE_CNT_RCV_SEQ_ERR ;
 unsigned int RXE_START_MASK ;
 int WARN_ON_ONCE (int) ;
 int aeth_syn (struct rxe_pkt_info*) ;
 int pr_warn (char*,...) ;
 int psn_compare (int ,int ) ;
 int reset_retry_counters (struct rxe_qp*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_run_task (int *,int) ;
 struct rxe_dev* to_rdev (int ) ;

__attribute__((used)) static inline enum comp_state check_ack(struct rxe_qp *qp,
     struct rxe_pkt_info *pkt,
     struct rxe_send_wqe *wqe)
{
 unsigned int mask = pkt->mask;
 u8 syn;
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);


 switch (qp->comp.opcode) {
 case -1:

  if (!(mask & RXE_START_MASK))
   return COMPST_ERROR;

  break;

 case 131:
 case 129:
  if (pkt->opcode != 129 &&
      pkt->opcode != 130) {



   if ((pkt->psn == wqe->first_psn &&
        pkt->opcode ==
        131) ||
       (wqe->first_psn == wqe->last_psn &&
        pkt->opcode ==
        128))
    break;

   return COMPST_ERROR;
  }
  break;
 default:
  WARN_ON_ONCE(1);
 }


 switch (pkt->opcode) {
 case 131:
 case 130:
 case 128:
  syn = aeth_syn(pkt);

  if ((syn & AETH_TYPE_MASK) != 140)
   return COMPST_ERROR;




 case 129:
  if (wqe->wr.opcode != IB_WR_RDMA_READ &&
      wqe->wr.opcode != IB_WR_RDMA_READ_WITH_INV) {
   wqe->status = IB_WC_FATAL_ERR;
   return COMPST_ERROR;
  }
  reset_retry_counters(qp);
  return COMPST_READ;

 case 132:
  syn = aeth_syn(pkt);

  if ((syn & AETH_TYPE_MASK) != 140)
   return COMPST_ERROR;

  if (wqe->wr.opcode != IB_WR_ATOMIC_CMP_AND_SWP &&
      wqe->wr.opcode != IB_WR_ATOMIC_FETCH_AND_ADD)
   return COMPST_ERROR;
  reset_retry_counters(qp);
  return COMPST_ATOMIC;

 case 133:
  syn = aeth_syn(pkt);
  switch (syn & AETH_TYPE_MASK) {
  case 140:
   reset_retry_counters(qp);
   return COMPST_WRITE_SEND;

  case 134:
   rxe_counter_inc(rxe, RXE_CNT_RCV_RNR);
   return COMPST_RNR_RETRY;

  case 139:
   switch (syn) {
   case 137:



    if (psn_compare(pkt->psn, qp->comp.psn) > 0) {
     rxe_counter_inc(rxe,
       RXE_CNT_RCV_SEQ_ERR);
     qp->comp.psn = pkt->psn;
     if (qp->req.wait_psn) {
      qp->req.wait_psn = 0;
      rxe_run_task(&qp->req.task, 1);
     }
    }
    return COMPST_ERROR_RETRY;

   case 138:
    wqe->status = IB_WC_REM_INV_REQ_ERR;
    return COMPST_ERROR;

   case 136:
    wqe->status = IB_WC_REM_ACCESS_ERR;
    return COMPST_ERROR;

   case 135:
    wqe->status = IB_WC_REM_OP_ERR;
    return COMPST_ERROR;

   default:
    pr_warn("unexpected nak %x\n", syn);
    wqe->status = IB_WC_REM_OP_ERR;
    return COMPST_ERROR;
   }

  default:
   return COMPST_ERROR;
  }
  break;

 default:
  pr_warn("unexpected opcode\n");
 }

 return COMPST_ERROR;
}
