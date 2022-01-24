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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ qp_type; int /*<<< orphan*/  qp_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  device; } ;
struct rvt_qp {scalar_t__ state; TYPE_2__ ibqp; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  s_hlock; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  r_sge; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_QP_LAST_WQE_REACHED ; 
 scalar_t__ IB_QPS_ERR ; 
 scalar_t__ IB_QPS_RESET ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ IB_QPT_SMI ; 
 int /*<<< orphan*/  IB_WC_LOC_PROT_ERR ; 
 int FUNC0 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_event*,int /*<<< orphan*/ ) ; 

void FUNC9(struct rvt_qp *qp, u32 lkey)
{
	bool lastwqe = false;

	if (qp->ibqp.qp_type == IB_QPT_SMI ||
	    qp->ibqp.qp_type == IB_QPT_GSI)
		/* avoid special QPs */
		return;
	FUNC5(&qp->r_lock);
	FUNC4(&qp->s_hlock);
	FUNC4(&qp->s_lock);

	if (qp->state == IB_QPS_ERR || qp->state == IB_QPS_RESET)
		goto check_lwqe;

	if (FUNC3(&qp->r_sge, lkey) ||
	    FUNC2(qp, lkey) ||
	    FUNC1(qp, lkey))
		lastwqe = FUNC0(qp, IB_WC_LOC_PROT_ERR);
check_lwqe:
	FUNC6(&qp->s_lock);
	FUNC6(&qp->s_hlock);
	FUNC7(&qp->r_lock);
	if (lastwqe) {
		struct ib_event ev;

		ev.device = qp->ibqp.device;
		ev.element.qp = &qp->ibqp;
		ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
		qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
	}
}