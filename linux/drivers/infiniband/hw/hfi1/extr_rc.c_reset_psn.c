
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct rvt_swqe {TYPE_1__ wr; int psn; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ s_psn; scalar_t__ s_sending_psn; int s_flags; int s_sending_hpsn; void* s_state; scalar_t__ s_num_rd_atomic; int s_lock; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_flags; scalar_t__ pending_tid_w_resp; scalar_t__ pending_tid_r_segs; } ;


 int HFI1_S_AHG_VALID ;
 int HFI1_S_TID_WAIT_INTERLCK ;







 void* OP (int ) ;
 int RDMA_READ_RESPONSE_FIRST ;
 int RDMA_READ_RESPONSE_LAST ;
 int RDMA_READ_RESPONSE_MIDDLE ;
 int READ_RESP ;
 int RVT_S_WAIT_PSN ;
 int SEND_LAST ;
 void* TID_OP (int ) ;
 int WRITE_RESP ;
 int cmp_psn (scalar_t__,int ) ;
 int lockdep_assert_held (int *) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int trace_hfi1_sender_reset_psn (struct rvt_qp*) ;
 int update_num_rd_atomic (struct rvt_qp*,scalar_t__,struct rvt_swqe*) ;

__attribute__((used)) static void reset_psn(struct rvt_qp *qp, u32 psn)
{
 u32 n = qp->s_acked;
 struct rvt_swqe *wqe = rvt_get_swqe_ptr(qp, n);
 u32 opcode;
 struct hfi1_qp_priv *priv = qp->priv;

 lockdep_assert_held(&qp->s_lock);
 qp->s_cur = n;
 priv->pending_tid_r_segs = 0;
 priv->pending_tid_w_resp = 0;
 qp->s_num_rd_atomic = 0;





 if (cmp_psn(psn, wqe->psn) <= 0) {
  qp->s_state = OP(SEND_LAST);
  goto done;
 }
 update_num_rd_atomic(qp, psn, wqe);


 for (;;) {
  int diff;

  if (++n == qp->s_size)
   n = 0;
  if (n == qp->s_tail)
   break;
  wqe = rvt_get_swqe_ptr(qp, n);
  diff = cmp_psn(psn, wqe->psn);
  if (diff < 0) {

   wqe = rvt_get_swqe_ptr(qp, qp->s_cur);
   break;
  }
  qp->s_cur = n;




  if (diff == 0) {
   qp->s_state = OP(SEND_LAST);
   goto done;
  }

  update_num_rd_atomic(qp, psn, wqe);
 }
 opcode = wqe->wr.opcode;






 switch (opcode) {
 case 131:
 case 130:
  qp->s_state = OP(RDMA_READ_RESPONSE_FIRST);
  break;

 case 133:
 case 132:
  qp->s_state = OP(RDMA_READ_RESPONSE_LAST);
  break;

 case 128:
  qp->s_state = TID_OP(WRITE_RESP);
  break;

 case 134:
  qp->s_state = OP(RDMA_READ_RESPONSE_MIDDLE);
  break;

 case 129:
  qp->s_state = TID_OP(READ_RESP);
  break;

 default:




  qp->s_state = OP(SEND_LAST);
 }
done:
 priv->s_flags &= ~HFI1_S_TID_WAIT_INTERLCK;
 qp->s_psn = psn;





 if ((cmp_psn(qp->s_psn, qp->s_sending_hpsn) <= 0) &&
     (cmp_psn(qp->s_sending_psn, qp->s_sending_hpsn) <= 0))
  qp->s_flags |= RVT_S_WAIT_PSN;
 qp->s_flags &= ~HFI1_S_AHG_VALID;
 trace_hfi1_sender_reset_psn(qp);
}
