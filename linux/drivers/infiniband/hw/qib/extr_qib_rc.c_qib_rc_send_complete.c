
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {size_t opcode; } ;
struct rvt_swqe {TYPE_3__ wr; scalar_t__ lpsn; } ;
struct rvt_qp {size_t state; scalar_t__ s_acked; scalar_t__ s_tail; int s_flags; scalar_t__ s_last; scalar_t__ s_psn; scalar_t__ s_sending_hpsn; scalar_t__ s_sending_psn; int s_rdma_ack_cnt; } ;
struct ib_other_headers {int * bth; } ;
struct TYPE_4__ {struct ib_other_headers oth; } ;
struct TYPE_5__ {TYPE_1__ l; struct ib_other_headers oth; } ;
struct ib_header {TYPE_2__ u; int * lrh; } ;


 int ATOMIC_ACKNOWLEDGE ;
 int IB_BTH_REQ_ACK ;
 int IB_WC_SUCCESS ;
 int OP (int ) ;
 int QIB_LRH_BTH ;
 int RDMA_READ_RESPONSE_FIRST ;
 int RVT_PROCESS_RECV_OK ;
 int RVT_SEND_OR_FLUSH_OR_RECV_OK ;
 int RVT_S_TIMER ;
 int RVT_S_WAIT_PSN ;
 int RVT_S_WAIT_RNR ;
 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int * ib_qib_wc_opcode ;
 int* ib_rvt_state_ops ;
 scalar_t__ qib_cmp24 (scalar_t__,scalar_t__) ;
 int qib_schedule_send (struct rvt_qp*) ;
 int reset_sending_psn (struct rvt_qp*,int) ;
 int rvt_add_retry_timer (struct rvt_qp*) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int rvt_qp_complete_swqe (struct rvt_qp*,struct rvt_swqe*,int ,int ) ;

void qib_rc_send_complete(struct rvt_qp *qp, struct ib_header *hdr)
{
 struct ib_other_headers *ohdr;
 struct rvt_swqe *wqe;
 u32 opcode;
 u32 psn;

 if (!(ib_rvt_state_ops[qp->state] & RVT_SEND_OR_FLUSH_OR_RECV_OK))
  return;


 if ((be16_to_cpu(hdr->lrh[0]) & 3) == QIB_LRH_BTH)
  ohdr = &hdr->u.oth;
 else
  ohdr = &hdr->u.l.oth;

 opcode = be32_to_cpu(ohdr->bth[0]) >> 24;
 if (opcode >= OP(RDMA_READ_RESPONSE_FIRST) &&
     opcode <= OP(ATOMIC_ACKNOWLEDGE)) {
  WARN_ON(!qp->s_rdma_ack_cnt);
  qp->s_rdma_ack_cnt--;
  return;
 }

 psn = be32_to_cpu(ohdr->bth[2]);
 reset_sending_psn(qp, psn);





 if ((psn & IB_BTH_REQ_ACK) && qp->s_acked != qp->s_tail &&
     !(qp->s_flags & (RVT_S_TIMER | RVT_S_WAIT_RNR | RVT_S_WAIT_PSN)) &&
     (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK))
  rvt_add_retry_timer(qp);

 while (qp->s_last != qp->s_acked) {
  wqe = rvt_get_swqe_ptr(qp, qp->s_last);
  if (qib_cmp24(wqe->lpsn, qp->s_sending_psn) >= 0 &&
      qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) <= 0)
   break;
  rvt_qp_complete_swqe(qp,
         wqe,
         ib_qib_wc_opcode[wqe->wr.opcode],
         IB_WC_SUCCESS);
 }




 if (qp->s_flags & RVT_S_WAIT_PSN &&
     qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
  qp->s_flags &= ~RVT_S_WAIT_PSN;
  qp->s_sending_psn = qp->s_psn;
  qp->s_sending_hpsn = qp->s_psn - 1;
  qib_schedule_send(qp);
 }
}
