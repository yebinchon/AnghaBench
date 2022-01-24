#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usnic_transport_spec {int dummy; } ;
struct usnic_ib_qp_grp_flow {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  qp_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;} ;
struct usnic_ib_qp_grp {int state; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  lock; TYPE_4__ ibqp; TYPE_2__* vf; } ;
struct TYPE_7__ {TYPE_4__* qp; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_3__ element; int /*<<< orphan*/ * device; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_6__ {TYPE_1__* pf; } ;
struct TYPE_5__ {int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
#define  IB_QPS_ERR 132 
#define  IB_QPS_INIT 131 
#define  IB_QPS_RESET 130 
#define  IB_QPS_RTR 129 
#define  IB_QPS_RTS 128 
 int /*<<< orphan*/  FUNC0 (struct usnic_ib_qp_grp_flow*) ; 
 int FUNC1 (struct usnic_ib_qp_grp_flow*) ; 
 struct usnic_ib_qp_grp_flow* FUNC2 (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ; 
 int FUNC3 (struct usnic_ib_qp_grp*) ; 
 int FUNC4 (struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC5 (struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct usnic_ib_qp_grp *qp_grp,
				enum ib_qp_state new_state,
				void *data)
{
	int status = 0;
	struct ib_event ib_event;
	enum ib_qp_state old_state;
	struct usnic_transport_spec *trans_spec;
	struct usnic_ib_qp_grp_flow *qp_flow;

	old_state = qp_grp->state;
	trans_spec = (struct usnic_transport_spec *) data;

	FUNC6(&qp_grp->lock);
	switch (new_state) {
	case IB_QPS_RESET:
		switch (old_state) {
		case IB_QPS_RESET:
			/* NO-OP */
			break;
		case IB_QPS_INIT:
			FUNC5(qp_grp);
			status = 0;
			break;
		case IB_QPS_RTR:
		case IB_QPS_RTS:
		case IB_QPS_ERR:
			status = FUNC3(qp_grp);
			FUNC5(qp_grp);
			break;
		default:
			status = -EINVAL;
		}
		break;
	case IB_QPS_INIT:
		switch (old_state) {
		case IB_QPS_RESET:
			if (trans_spec) {
				qp_flow = FUNC2(qp_grp,
								trans_spec);
				if (FUNC0(qp_flow)) {
					status = qp_flow ? FUNC1(qp_flow) : -EFAULT;
					break;
				}
			} else {
				/*
				 * Optional to specify filters.
				 */
				status = 0;
			}
			break;
		case IB_QPS_INIT:
			if (trans_spec) {
				qp_flow = FUNC2(qp_grp,
								trans_spec);
				if (FUNC0(qp_flow)) {
					status = qp_flow ? FUNC1(qp_flow) : -EFAULT;
					break;
				}
			} else {
				/*
				 * Doesn't make sense to go into INIT state
				 * from INIT state w/o adding filters.
				 */
				status = -EINVAL;
			}
			break;
		case IB_QPS_RTR:
			status = FUNC3(qp_grp);
			break;
		case IB_QPS_RTS:
			status = FUNC3(qp_grp);
			break;
		default:
			status = -EINVAL;
		}
		break;
	case IB_QPS_RTR:
		switch (old_state) {
		case IB_QPS_INIT:
			status = FUNC4(qp_grp);
			break;
		default:
			status = -EINVAL;
		}
		break;
	case IB_QPS_RTS:
		switch (old_state) {
		case IB_QPS_RTR:
			/* NO-OP FOR NOW */
			break;
		default:
			status = -EINVAL;
		}
		break;
	case IB_QPS_ERR:
		ib_event.device = &qp_grp->vf->pf->ib_dev;
		ib_event.element.qp = &qp_grp->ibqp;
		ib_event.event = IB_EVENT_QP_FATAL;

		switch (old_state) {
		case IB_QPS_RESET:
			qp_grp->ibqp.event_handler(&ib_event,
					qp_grp->ibqp.qp_context);
			break;
		case IB_QPS_INIT:
			FUNC5(qp_grp);
			qp_grp->ibqp.event_handler(&ib_event,
					qp_grp->ibqp.qp_context);
			break;
		case IB_QPS_RTR:
		case IB_QPS_RTS:
			status = FUNC3(qp_grp);
			FUNC5(qp_grp);
			qp_grp->ibqp.event_handler(&ib_event,
					qp_grp->ibqp.qp_context);
			break;
		default:
			status = -EINVAL;
		}
		break;
	default:
		status = -EINVAL;
	}
	FUNC7(&qp_grp->lock);

	if (!status) {
		qp_grp->state = new_state;
		FUNC13("Transitioned %u from %s to %s",
		qp_grp->grp_id,
		FUNC12(old_state),
		FUNC12(new_state));
	} else {
		FUNC11("Failed to transition %u from %s to %s",
		qp_grp->grp_id,
		FUNC12(old_state),
		FUNC12(new_state));
	}

	return status;
}