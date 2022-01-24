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
struct TYPE_4__ {int /*<<< orphan*/  tx_suspend; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct siw_qp {int /*<<< orphan*/  state_lock; TYPE_2__ tx_ctx; TYPE_1__ attrs; } ;

/* Variables and functions */
 scalar_t__ SIW_QP_STATE_RTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_qp*) ; 
 int FUNC5 (struct siw_qp*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct siw_qp *qp)
{
	if (FUNC0(&qp->state_lock)) {
		if (FUNC1(qp->attrs.state == SIW_QP_STATE_RTS &&
			   !qp->tx_ctx.tx_suspend)) {
			int rv = FUNC5(qp);

			FUNC7(&qp->state_lock);

			if (FUNC6(rv < 0)) {
				FUNC2(qp, "SQ task failed: err %d\n", rv);

				if (!qp->tx_ctx.tx_suspend)
					FUNC3(qp, 0);
			}
		} else {
			FUNC7(&qp->state_lock);
		}
	} else {
		FUNC2(qp, "Resume SQ while QP locked\n");
	}
	FUNC4(qp);
}