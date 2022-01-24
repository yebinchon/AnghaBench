#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ocrdma_qp {int /*<<< orphan*/  rq_entry; int /*<<< orphan*/  rq_cq; int /*<<< orphan*/  srq; int /*<<< orphan*/  sq_entry; int /*<<< orphan*/  sq_cq; TYPE_1__ ibqp; } ;
struct ocrdma_dev {int /*<<< orphan*/  flush_q_lock; } ;

/* Variables and functions */
 struct ocrdma_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ocrdma_qp*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct ocrdma_qp *qp)
{
	int found = false;
	unsigned long flags;
	struct ocrdma_dev *dev = FUNC0(qp->ibqp.device);
	/* sync with any active CQ poll */

	FUNC4(&dev->flush_q_lock, flags);
	found = FUNC3(qp->sq_cq, qp);
	if (found)
		FUNC1(&qp->sq_entry);
	if (!qp->srq) {
		found = FUNC2(qp->rq_cq, qp);
		if (found)
			FUNC1(&qp->rq_entry);
	}
	FUNC5(&dev->flush_q_lock, flags);
}