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
struct TYPE_8__ {int opcode; int /*<<< orphan*/  task; scalar_t__ noack_pkts; scalar_t__ need_retry; void* state; } ;
struct TYPE_7__ {int /*<<< orphan*/  task; } ;
struct TYPE_6__ {scalar_t__ queue; } ;
struct TYPE_5__ {int opcode; int /*<<< orphan*/  task; int /*<<< orphan*/ * mr; scalar_t__ sent_psn_nak; scalar_t__ goto_error; scalar_t__ drop_msg; scalar_t__ msn; void* state; } ;
struct rxe_qp {TYPE_4__ req; TYPE_3__ comp; TYPE_2__ sq; TYPE_1__ resp; int /*<<< orphan*/  ssn; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_RC ; 
 void* QP_STATE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_qp*) ; 
 scalar_t__ FUNC3 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct rxe_qp *qp)
{
	/* stop tasks from running */
	FUNC4(&qp->resp.task);

	/* stop request/comp */
	if (qp->sq.queue) {
		if (FUNC3(qp) == IB_QPT_RC)
			FUNC4(&qp->comp.task);
		FUNC4(&qp->req.task);
	}

	/* move qp to the reset state */
	qp->req.state = QP_STATE_RESET;
	qp->resp.state = QP_STATE_RESET;

	/* let state machines reset themselves drain work and packet queues
	 * etc.
	 */
	FUNC0(&qp->resp.task);

	if (qp->sq.queue) {
		FUNC0(&qp->comp.task);
		FUNC0(&qp->req.task);
		FUNC7(qp->sq.queue);
	}

	/* cleanup attributes */
	FUNC1(&qp->ssn, 0);
	qp->req.opcode = -1;
	qp->req.need_retry = 0;
	qp->req.noack_pkts = 0;
	qp->resp.msn = 0;
	qp->resp.opcode = -1;
	qp->resp.drop_msg = 0;
	qp->resp.goto_error = 0;
	qp->resp.sent_psn_nak = 0;

	if (qp->resp.mr) {
		FUNC5(qp->resp.mr);
		qp->resp.mr = NULL;
	}

	FUNC2(qp);

	/* reenable tasks */
	FUNC6(&qp->resp.task);

	if (qp->sq.queue) {
		if (FUNC3(qp) == IB_QPT_RC)
			FUNC6(&qp->comp.task);

		FUNC6(&qp->req.task);
	}
}