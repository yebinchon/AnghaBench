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
struct rdma_counter {int /*<<< orphan*/  kref; } ;
struct ib_qp {struct rdma_counter* counter; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  counter_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct ib_qp *qp, bool force)
{
	struct rdma_counter *counter = qp->counter;
	int ret;

	if (!counter)
		return -EINVAL;

	ret = FUNC0(qp);
	if (ret && !force)
		return ret;

	FUNC1(&counter->kref, counter_release);
	return 0;
}