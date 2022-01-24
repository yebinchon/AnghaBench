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
struct siw_qp_attrs {int state; } ;
struct TYPE_3__ {int state; } ;
struct siw_qp {TYPE_1__ attrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  wr_status; } ;

/* Variables and functions */
 int ECONNABORTED ; 
#define  SIW_QP_STATE_CLOSING 130 
#define  SIW_QP_STATE_ERROR 129 
#define  SIW_QP_STATE_IDLE 128 
 int /*<<< orphan*/  SIW_WR_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * siw_qp_state_to_string ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_qp*) ; 
 TYPE_2__* FUNC4 (struct siw_qp*) ; 

__attribute__((used)) static int FUNC5(struct siw_qp *qp,
				       struct siw_qp_attrs *attrs)
{
	int rv = 0;

	switch (attrs->state) {
	case SIW_QP_STATE_IDLE:
		FUNC0(FUNC4(qp)->wr_status != SIW_WR_IDLE);
		qp->attrs.state = SIW_QP_STATE_IDLE;
		break;

	case SIW_QP_STATE_CLOSING:
		/*
		 * The LLP may already moved the QP to closing
		 * due to graceful peer close init
		 */
		break;

	case SIW_QP_STATE_ERROR:
		/*
		 * QP was moved to CLOSING by LLP event
		 * not yet seen by user.
		 */
		qp->attrs.state = SIW_QP_STATE_ERROR;

		if (FUNC4(qp)->wr_status != SIW_WR_IDLE)
			FUNC3(qp);

		FUNC2(qp);
		break;

	default:
		FUNC1(qp, "state transition undefined: %s => %s\n",
			   siw_qp_state_to_string[qp->attrs.state],
			   siw_qp_state_to_string[attrs->state]);

		rv = -ECONNABORTED;
	}
	return rv;
}