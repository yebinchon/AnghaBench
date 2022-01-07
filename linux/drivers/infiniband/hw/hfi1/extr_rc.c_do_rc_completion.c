
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sdma_engine {int dummy; } ;
struct TYPE_6__ {size_t opcode; } ;
struct rvt_swqe {int psn; int lpsn; TYPE_3__ wr; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ state; scalar_t__ s_draining; int s_psn; int s_state; int s_retry_cnt; int s_retry; int remote_ah_attr; int s_last; int s_sending_hpsn; int s_sending_psn; int s_lock; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_flags; } ;
struct hfi1_pportdata {TYPE_2__* dd; } ;
struct TYPE_4__ {int * rc_delayed_comp; } ;
struct hfi1_ibport {size_t* sl_to_sc; TYPE_1__ rvp; } ;
struct TYPE_5__ {int flags; } ;


 int HFI1_HAS_SEND_DMA ;
 int HFI1_S_TID_WAIT_INTERLCK ;
 scalar_t__ IB_QPS_SQD ;
 int IB_WC_SUCCESS ;
 size_t IB_WR_TID_RDMA_WRITE ;
 int OP (int ) ;
 int SEND_LAST ;
 scalar_t__ cmp_psn (int ,int ) ;
 int hfi1_schedule_send (struct rvt_qp*) ;
 int * ib_hfi1_wc_opcode ;
 int lockdep_assert_held (int *) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 struct sdma_engine* qp_to_sdma_engine (struct rvt_qp*,size_t) ;
 size_t rdma_ah_get_sl (int *) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int rvt_qp_complete_swqe (struct rvt_qp*,struct rvt_swqe*,int ,int ) ;
 int sdma_engine_progress_schedule (struct sdma_engine*) ;
 int this_cpu_inc (int ) ;
 int trace_hfi1_qp_send_completion (struct rvt_qp*,struct rvt_swqe*,int ) ;
 int trace_hfi1_rc_completion (struct rvt_qp*,int ) ;
 int trdma_clean_swqe (struct rvt_qp*,struct rvt_swqe*) ;
 int update_last_psn (struct rvt_qp*,int ) ;

struct rvt_swqe *do_rc_completion(struct rvt_qp *qp,
      struct rvt_swqe *wqe,
      struct hfi1_ibport *ibp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 lockdep_assert_held(&qp->s_lock);





 trace_hfi1_rc_completion(qp, wqe->lpsn);
 if (cmp_psn(wqe->lpsn, qp->s_sending_psn) < 0 ||
     cmp_psn(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
  trdma_clean_swqe(qp, wqe);
  trace_hfi1_qp_send_completion(qp, wqe, qp->s_last);
  rvt_qp_complete_swqe(qp,
         wqe,
         ib_hfi1_wc_opcode[wqe->wr.opcode],
         IB_WC_SUCCESS);
 } else {
  struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);

  this_cpu_inc(*ibp->rvp.rc_delayed_comp);




  if (ppd->dd->flags & HFI1_HAS_SEND_DMA) {
   struct sdma_engine *engine;
   u8 sl = rdma_ah_get_sl(&qp->remote_ah_attr);
   u8 sc5;


   sc5 = ibp->sl_to_sc[sl];
   engine = qp_to_sdma_engine(qp, sc5);
   sdma_engine_progress_schedule(engine);
  }
 }

 qp->s_retry = qp->s_retry_cnt;
 if (wqe->wr.opcode != IB_WR_TID_RDMA_WRITE)
  update_last_psn(qp, wqe->lpsn);






 if (qp->s_acked == qp->s_cur) {
  if (++qp->s_cur >= qp->s_size)
   qp->s_cur = 0;
  qp->s_acked = qp->s_cur;
  wqe = rvt_get_swqe_ptr(qp, qp->s_cur);
  if (qp->s_acked != qp->s_tail) {
   qp->s_state = OP(SEND_LAST);
   qp->s_psn = wqe->psn;
  }
 } else {
  if (++qp->s_acked >= qp->s_size)
   qp->s_acked = 0;
  if (qp->state == IB_QPS_SQD && qp->s_acked == qp->s_cur)
   qp->s_draining = 0;
  wqe = rvt_get_swqe_ptr(qp, qp->s_acked);
 }
 if (priv->s_flags & HFI1_S_TID_WAIT_INTERLCK) {
  priv->s_flags &= ~HFI1_S_TID_WAIT_INTERLCK;
  hfi1_schedule_send(qp);
 }
 return wqe;
}
