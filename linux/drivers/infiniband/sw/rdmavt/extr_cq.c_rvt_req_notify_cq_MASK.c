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
struct rvt_cq {int notify; int /*<<< orphan*/  lock; TYPE_2__* kqueue; TYPE_1__* queue; } ;
struct ib_cq {int dummy; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_3__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int IB_CQ_SOLICITED_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_cq* FUNC1 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
{
	struct rvt_cq *cq = FUNC1(ibcq);
	unsigned long flags;
	int ret = 0;

	FUNC2(&cq->lock, flags);
	/*
	 * Don't change IB_CQ_NEXT_COMP to IB_CQ_SOLICITED but allow
	 * any other transitions (see C11-31 and C11-32 in ch. 11.4.2.2).
	 */
	if (cq->notify != IB_CQ_NEXT_COMP)
		cq->notify = notify_flags & IB_CQ_SOLICITED_MASK;

	if (notify_flags & IB_CQ_REPORT_MISSED_EVENTS) {
		if (cq->queue) {
			if (FUNC0(cq->queue->head) !=
				FUNC0(cq->queue->tail))
				ret = 1;
		} else {
			if (cq->kqueue->head != cq->kqueue->tail)
				ret = 1;
		}
	}

	FUNC3(&cq->lock, flags);

	return ret;
}