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
struct rdma_counter {int dummy; } ;
struct mlx5_ib_qp {scalar_t__ state; int counter_pending; int /*<<< orphan*/  mutex; } ;
struct ib_qp {struct rdma_counter* counter; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 scalar_t__ IB_QPS_RTS ; 
 int FUNC0 (struct ib_qp*,struct rdma_counter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5_ib_qp* FUNC3 (struct ib_qp*) ; 

int FUNC4(struct ib_qp *qp, struct rdma_counter *counter)
{
	struct mlx5_ib_qp *mqp = FUNC3(qp);
	int err = 0;

	FUNC1(&mqp->mutex);
	if (mqp->state == IB_QPS_RESET) {
		qp->counter = counter;
		goto out;
	}

	if (mqp->state == IB_QPS_RTS) {
		err = FUNC0(qp, counter);
		if (!err)
			qp->counter = counter;

		goto out;
	}

	mqp->counter_pending = 1;
	qp->counter = counter;

out:
	FUNC2(&mqp->mutex);
	return err;
}