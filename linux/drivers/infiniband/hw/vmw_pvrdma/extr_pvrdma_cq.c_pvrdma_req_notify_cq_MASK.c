#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pvrdma_dev {TYPE_3__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  cqe; } ;
struct pvrdma_cq {int /*<<< orphan*/  cq_lock; TYPE_2__ ibcq; TYPE_1__* ring_state; int /*<<< orphan*/  cq_handle; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 int PVRDMA_INVALID_IDX ; 
 int /*<<< orphan*/  PVRDMA_UAR_CQ_ARM ; 
 int /*<<< orphan*/  PVRDMA_UAR_CQ_ARM_SOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pvrdma_cq* FUNC5 (struct ib_cq*) ; 
 struct pvrdma_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ib_cq *ibcq,
			 enum ib_cq_notify_flags notify_flags)
{
	struct pvrdma_dev *dev = FUNC6(ibcq->device);
	struct pvrdma_cq *cq = FUNC5(ibcq);
	u32 val = cq->cq_handle;
	unsigned long flags;
	int has_data = 0;

	val |= (notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
		PVRDMA_UAR_CQ_ARM_SOL : PVRDMA_UAR_CQ_ARM;

	FUNC3(&cq->cq_lock, flags);

	FUNC2(dev, val);

	if (notify_flags & IB_CQ_REPORT_MISSED_EVENTS) {
		unsigned int head;

		has_data = FUNC1(&cq->ring_state->rx,
						    cq->ibcq.cqe, &head);
		if (FUNC7(has_data == PVRDMA_INVALID_IDX))
			FUNC0(&dev->pdev->dev, "CQ ring state invalid\n");
	}

	FUNC4(&cq->cq_lock, flags);

	return has_data;
}