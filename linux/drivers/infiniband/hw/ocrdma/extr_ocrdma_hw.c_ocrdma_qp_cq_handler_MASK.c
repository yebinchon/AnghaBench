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
typedef  size_t u16 ;
struct ocrdma_dev {struct ocrdma_cq** cq_tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct ocrdma_cq {int /*<<< orphan*/  comp_handler_lock; TYPE_1__ ibcq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t OCRDMA_MAX_CQ ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*,struct ocrdma_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ocrdma_dev *dev, u16 cq_idx)
{
	unsigned long flags;
	struct ocrdma_cq *cq;

	if (cq_idx >= OCRDMA_MAX_CQ)
		FUNC0();

	cq = dev->cq_tbl[cq_idx];
	if (cq == NULL)
		return;

	if (cq->ibcq.comp_handler) {
		FUNC2(&cq->comp_handler_lock, flags);
		(*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
		FUNC3(&cq->comp_handler_lock, flags);
	}
	FUNC1(dev, cq);
}