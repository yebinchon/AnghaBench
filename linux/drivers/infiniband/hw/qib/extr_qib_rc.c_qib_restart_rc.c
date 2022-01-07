
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ opcode; } ;
struct rvt_swqe {TYPE_2__ wr; } ;
struct TYPE_4__ {int device; } ;
struct rvt_qp {scalar_t__ s_acked; scalar_t__ s_retry; scalar_t__ s_mig_state; scalar_t__ s_retry_cnt; scalar_t__ s_last; int s_psn; int s_flags; int port_num; TYPE_1__ ibqp; } ;
struct TYPE_6__ {scalar_t__ n_rc_resends; } ;
struct qib_ibport {TYPE_3__ rvp; } ;


 scalar_t__ IB_MIG_ARMED ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ IB_WR_RDMA_READ ;
 int QIB_PSN_MASK ;
 int RVT_S_SEND_ONE ;
 int RVT_S_WAIT_ACK ;
 int RVT_S_WAIT_FENCE ;
 int RVT_S_WAIT_PSN ;
 int RVT_S_WAIT_RDMAR ;
 int RVT_S_WAIT_SSN_CREDIT ;
 int qib_migrate_qp (struct rvt_qp*) ;
 int reset_psn (struct rvt_qp*,int) ;
 int rvt_error_qp (struct rvt_qp*,int ) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int rvt_send_complete (struct rvt_qp*,struct rvt_swqe*,int ) ;
 struct qib_ibport* to_iport (int ,int ) ;

void qib_restart_rc(struct rvt_qp *qp, u32 psn, int wait)
{
 struct rvt_swqe *wqe = rvt_get_swqe_ptr(qp, qp->s_acked);
 struct qib_ibport *ibp;

 if (qp->s_retry == 0) {
  if (qp->s_mig_state == IB_MIG_ARMED) {
   qib_migrate_qp(qp);
   qp->s_retry = qp->s_retry_cnt;
  } else if (qp->s_last == qp->s_acked) {
   rvt_send_complete(qp, wqe, IB_WC_RETRY_EXC_ERR);
   rvt_error_qp(qp, IB_WC_WR_FLUSH_ERR);
   return;
  } else
   return;
 } else
  qp->s_retry--;

 ibp = to_iport(qp->ibqp.device, qp->port_num);
 if (wqe->wr.opcode == IB_WR_RDMA_READ)
  ibp->rvp.n_rc_resends++;
 else
  ibp->rvp.n_rc_resends += (qp->s_psn - psn) & QIB_PSN_MASK;

 qp->s_flags &= ~(RVT_S_WAIT_FENCE | RVT_S_WAIT_RDMAR |
    RVT_S_WAIT_SSN_CREDIT | RVT_S_WAIT_PSN |
    RVT_S_WAIT_ACK);
 if (wait)
  qp->s_flags |= RVT_S_SEND_ONE;
 reset_psn(qp, psn);
}
