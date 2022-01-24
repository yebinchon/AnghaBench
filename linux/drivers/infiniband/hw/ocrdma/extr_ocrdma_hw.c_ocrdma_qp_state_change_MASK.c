#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocrdma_qp {int state; int /*<<< orphan*/  q_lock; } ;
typedef  enum ocrdma_qp_state { ____Placeholder_ocrdma_qp_state } ocrdma_qp_state ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int OCRDMA_QPS_ERR ; 
 int OCRDMA_QPS_INIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ocrdma_qp *qp, enum ib_qp_state new_ib_state,
			   enum ib_qp_state *old_ib_state)
{
	unsigned long flags;
	enum ocrdma_qp_state new_state;
	new_state = FUNC1(new_ib_state);

	/* sync with wqe and rqe posting */
	FUNC5(&qp->q_lock, flags);

	if (old_ib_state)
		*old_ib_state = FUNC0(qp->state);
	if (new_state == qp->state) {
		FUNC6(&qp->q_lock, flags);
		return 1;
	}


	if (new_state == OCRDMA_QPS_INIT) {
		FUNC4(qp);
		FUNC2(qp);
	} else if (new_state == OCRDMA_QPS_ERR) {
		FUNC3(qp);
	}

	qp->state = new_state;

	FUNC6(&qp->q_lock, flags);
	return 0;
}