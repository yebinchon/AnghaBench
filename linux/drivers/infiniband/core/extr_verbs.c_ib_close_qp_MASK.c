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
struct ib_qp {scalar_t__ qp_sec; int /*<<< orphan*/  usecnt; TYPE_1__* device; int /*<<< orphan*/  open_list; struct ib_qp* real_qp; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_handler_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct ib_qp *qp)
{
	struct ib_qp *real_qp;
	unsigned long flags;

	real_qp = qp->real_qp;
	if (real_qp == qp)
		return -EINVAL;

	FUNC4(&real_qp->device->event_handler_lock, flags);
	FUNC3(&qp->open_list);
	FUNC5(&real_qp->device->event_handler_lock, flags);

	FUNC0(&real_qp->usecnt);
	if (qp->qp_sec)
		FUNC1(qp->qp_sec);
	FUNC2(qp);

	return 0;
}