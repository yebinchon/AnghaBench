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
struct ocrdma_dev {int dummy; } ;
struct ocrdma_cqe {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ocrdma_cq {int cqe_cnt; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  id; struct ocrdma_cqe* va; TYPE_1__ ibcq; } ;

/* Variables and functions */
 struct ocrdma_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocrdma_cq*,struct ocrdma_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ocrdma_cq *cq)
{
	int cqe_cnt;
	int valid_count = 0;
	unsigned long flags;

	struct ocrdma_dev *dev = FUNC0(cq->ibcq.device);
	struct ocrdma_cqe *cqe = NULL;

	cqe = cq->va;
	cqe_cnt = cq->cqe_cnt;

	/* Last irq might have scheduled a polling thread
	 * sync-up with it before hard flushing.
	 */
	FUNC3(&cq->cq_lock, flags);
	while (cqe_cnt) {
		if (FUNC1(cq, cqe))
			valid_count++;
		cqe++;
		cqe_cnt--;
	}
	FUNC2(dev, cq->id, false, false, valid_count);
	FUNC4(&cq->cq_lock, flags);
}