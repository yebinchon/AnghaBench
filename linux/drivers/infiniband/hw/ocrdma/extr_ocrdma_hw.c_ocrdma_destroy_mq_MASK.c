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
struct ocrdma_queue_info {scalar_t__ created; } ;
struct TYPE_4__ {struct ocrdma_queue_info cq; struct ocrdma_queue_info sq; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ocrdma_dev {TYPE_2__ mq; TYPE_1__ mqe_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  QTYPE_MCCQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,struct ocrdma_queue_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*,struct ocrdma_queue_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ocrdma_dev *dev)
{
	struct ocrdma_queue_info *mbxq, *cq;

	/* mqe_ctx lock synchronizes with any other pending cmds. */
	FUNC0(&dev->mqe_ctx.lock);
	mbxq = &dev->mq.sq;
	if (mbxq->created) {
		FUNC3(dev, mbxq, QTYPE_MCCQ);
		FUNC2(dev, mbxq);
	}
	FUNC1(&dev->mqe_ctx.lock);

	cq = &dev->mq.cq;
	if (cq->created) {
		FUNC3(dev, cq, QTYPE_CQ);
		FUNC2(dev, cq);
	}
}