
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t opcode; } ;
struct rvt_swqe {int psn; int lpsn; TYPE_1__ wr; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_size; scalar_t__ s_tail; scalar_t__ state; scalar_t__ s_draining; int s_psn; int s_state; int s_retry_cnt; int s_retry; int s_sending_hpsn; int s_sending_psn; } ;
struct TYPE_4__ {int * rc_delayed_comp; } ;
struct qib_ibport {TYPE_2__ rvp; } ;


 scalar_t__ IB_QPS_SQD ;
 int IB_WC_SUCCESS ;
 int OP (int ) ;
 int SEND_LAST ;
 int * ib_qib_wc_opcode ;
 scalar_t__ qib_cmp24 (int ,int ) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int rvt_qp_complete_swqe (struct rvt_qp*,struct rvt_swqe*,int ,int ) ;
 int this_cpu_inc (int ) ;
 int update_last_psn (struct rvt_qp*,int ) ;

__attribute__((used)) static struct rvt_swqe *do_rc_completion(struct rvt_qp *qp,
      struct rvt_swqe *wqe,
      struct qib_ibport *ibp)
{





 if (qib_cmp24(wqe->lpsn, qp->s_sending_psn) < 0 ||
     qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) > 0)
  rvt_qp_complete_swqe(qp,
         wqe,
         ib_qib_wc_opcode[wqe->wr.opcode],
         IB_WC_SUCCESS);
 else
  this_cpu_inc(*ibp->rvp.rc_delayed_comp);

 qp->s_retry = qp->s_retry_cnt;
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
 return wqe;
}
