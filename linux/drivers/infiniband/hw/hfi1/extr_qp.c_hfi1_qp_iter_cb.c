
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct TYPE_4__ {scalar_t__ qp_type; int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {scalar_t__ port_num; size_t state; TYPE_2__ ibqp; int r_lock; int s_hlock; int s_lock; int remote_ah_attr; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
struct hfi1_pportdata {scalar_t__ port; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 int IB_WC_WR_FLUSH_ERR ;
 int RVT_POST_SEND_OK ;
 int* ib_rvt_state_ops ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 scalar_t__ rdma_ah_get_sl (int *) ;
 int rvt_error_qp (struct rvt_qp*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ib_event*,int ) ;
 struct hfi1_ibport* to_iport (int ,scalar_t__) ;

__attribute__((used)) static void hfi1_qp_iter_cb(struct rvt_qp *qp, u64 v)
{
 int lastwqe;
 struct ib_event ev;
 struct hfi1_ibport *ibp =
  to_iport(qp->ibqp.device, qp->port_num);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 u8 sl = (u8)v;

 if (qp->port_num != ppd->port ||
     (qp->ibqp.qp_type != IB_QPT_UC &&
      qp->ibqp.qp_type != IB_QPT_RC) ||
     rdma_ah_get_sl(&qp->remote_ah_attr) != sl ||
     !(ib_rvt_state_ops[qp->state] & RVT_POST_SEND_OK))
  return;

 spin_lock_irq(&qp->r_lock);
 spin_lock(&qp->s_hlock);
 spin_lock(&qp->s_lock);
 lastwqe = rvt_error_qp(qp, IB_WC_WR_FLUSH_ERR);
 spin_unlock(&qp->s_lock);
 spin_unlock(&qp->s_hlock);
 spin_unlock_irq(&qp->r_lock);
 if (lastwqe) {
  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
}
