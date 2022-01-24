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
typedef  int /*<<< orphan*/  u16 ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_cq {int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  id; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_SOLICITED ; 
 struct ocrdma_cq* FUNC0 (struct ib_cq*) ; 
 struct ocrdma_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ib_cq *ibcq, enum ib_cq_notify_flags cq_flags)
{
	struct ocrdma_cq *cq = FUNC0(ibcq);
	struct ocrdma_dev *dev = FUNC1(ibcq->device);
	u16 cq_id;
	unsigned long flags;
	bool arm_needed = false, sol_needed = false;

	cq_id = cq->id;

	FUNC3(&cq->cq_lock, flags);
	if (cq_flags & IB_CQ_NEXT_COMP || cq_flags & IB_CQ_SOLICITED)
		arm_needed = true;
	if (cq_flags & IB_CQ_SOLICITED)
		sol_needed = true;

	FUNC2(dev, cq_id, arm_needed, sol_needed, 0);
	FUNC4(&cq->cq_lock, flags);

	return 0;
}