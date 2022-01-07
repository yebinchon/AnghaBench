
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ opcode; } ;
struct rvt_swqe {TYPE_1__ wr; int lpsn; } ;
struct rvt_qp {int rspwait; int r_flags; scalar_t__ s_last_psn; int s_acked; int s_lock; } ;
struct TYPE_4__ {int n_rdma_seq; } ;
struct hfi1_ibport {TYPE_2__ rvp; } ;
struct hfi1_ctxtdata {int qp_wait_list; } ;


 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ;
 scalar_t__ IB_WR_ATOMIC_FETCH_AND_ADD ;
 scalar_t__ IB_WR_RDMA_READ ;
 scalar_t__ IB_WR_TID_RDMA_READ ;
 scalar_t__ IB_WR_TID_RDMA_WRITE ;
 int RVT_R_RDMAR_SEQ ;
 int RVT_R_RSP_SEND ;
 scalar_t__ cmp_psn (int ,int ) ;
 struct rvt_swqe* do_rc_completion (struct rvt_qp*,struct rvt_swqe*,struct hfi1_ibport*) ;
 int hfi1_restart_rc (struct rvt_qp*,scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rvt_get_qp (struct rvt_qp*) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,int ) ;
 int rvt_stop_rc_timers (struct rvt_qp*) ;

__attribute__((used)) static void rdma_seq_err(struct rvt_qp *qp, struct hfi1_ibport *ibp, u32 psn,
    struct hfi1_ctxtdata *rcd)
{
 struct rvt_swqe *wqe;

 lockdep_assert_held(&qp->s_lock);

 rvt_stop_rc_timers(qp);

 wqe = rvt_get_swqe_ptr(qp, qp->s_acked);

 while (cmp_psn(psn, wqe->lpsn) > 0) {
  if (wqe->wr.opcode == IB_WR_RDMA_READ ||
      wqe->wr.opcode == IB_WR_TID_RDMA_READ ||
      wqe->wr.opcode == IB_WR_TID_RDMA_WRITE ||
      wqe->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
      wqe->wr.opcode == IB_WR_ATOMIC_FETCH_AND_ADD)
   break;
  wqe = do_rc_completion(qp, wqe, ibp);
 }

 ibp->rvp.n_rdma_seq++;
 qp->r_flags |= RVT_R_RDMAR_SEQ;
 hfi1_restart_rc(qp, qp->s_last_psn + 1, 0);
 if (list_empty(&qp->rspwait)) {
  qp->r_flags |= RVT_R_RSP_SEND;
  rvt_get_qp(qp);
  list_add_tail(&qp->rspwait, &rcd->qp_wait_list);
 }
}
