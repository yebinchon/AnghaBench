#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {scalar_t__ qp_type; int /*<<< orphan*/  qp_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  device; } ;
struct rvt_qp {scalar_t__ port_num; size_t state; TYPE_2__ ibqp; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  s_hlock; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  remote_ah_attr; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; int /*<<< orphan*/  device; } ;
struct hfi1_pportdata {scalar_t__ port; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_QP_LAST_WQE_REACHED ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int RVT_POST_SEND_OK ; 
 int* ib_rvt_state_ops ; 
 struct hfi1_pportdata* FUNC0 (struct hfi1_ibport*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_event*,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct rvt_qp *qp, u64 v)
{
	int lastwqe;
	struct ib_event ev;
	struct hfi1_ibport *ibp =
		FUNC8(qp->ibqp.device, qp->port_num);
	struct hfi1_pportdata *ppd = FUNC0(ibp);
	u8 sl = (u8)v;

	if (qp->port_num != ppd->port ||
	    (qp->ibqp.qp_type != IB_QPT_UC &&
	     qp->ibqp.qp_type != IB_QPT_RC) ||
	    FUNC1(&qp->remote_ah_attr) != sl ||
	    !(ib_rvt_state_ops[qp->state] & RVT_POST_SEND_OK))
		return;

	FUNC4(&qp->r_lock);
	FUNC3(&qp->s_hlock);
	FUNC3(&qp->s_lock);
	lastwqe = FUNC2(qp, IB_WC_WR_FLUSH_ERR);
	FUNC5(&qp->s_lock);
	FUNC5(&qp->s_hlock);
	FUNC6(&qp->r_lock);
	if (lastwqe) {
		ev.device = qp->ibqp.device;
		ev.element.qp = &qp->ibqp;
		ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
		qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
	}
}