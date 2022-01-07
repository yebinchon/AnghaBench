
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ qp_type; int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {scalar_t__ state; TYPE_2__ ibqp; int r_lock; int s_hlock; int s_lock; int r_sge; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_QPS_ERR ;
 scalar_t__ IB_QPS_RESET ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_SMI ;
 int IB_WC_LOC_PROT_ERR ;
 int rvt_error_qp (struct rvt_qp*,int ) ;
 scalar_t__ rvt_qp_acks_has_lkey (struct rvt_qp*,int ) ;
 scalar_t__ rvt_qp_sends_has_lkey (struct rvt_qp*,int ) ;
 scalar_t__ rvt_ss_has_lkey (int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ib_event*,int ) ;

void rvt_qp_mr_clean(struct rvt_qp *qp, u32 lkey)
{
 bool lastwqe = 0;

 if (qp->ibqp.qp_type == IB_QPT_SMI ||
     qp->ibqp.qp_type == IB_QPT_GSI)

  return;
 spin_lock_irq(&qp->r_lock);
 spin_lock(&qp->s_hlock);
 spin_lock(&qp->s_lock);

 if (qp->state == IB_QPS_ERR || qp->state == IB_QPS_RESET)
  goto check_lwqe;

 if (rvt_ss_has_lkey(&qp->r_sge, lkey) ||
     rvt_qp_sends_has_lkey(qp, lkey) ||
     rvt_qp_acks_has_lkey(qp, lkey))
  lastwqe = rvt_error_qp(qp, IB_WC_LOC_PROT_ERR);
check_lwqe:
 spin_unlock(&qp->s_lock);
 spin_unlock(&qp->s_hlock);
 spin_unlock_irq(&qp->r_lock);
 if (lastwqe) {
  struct ib_event ev;

  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
}
