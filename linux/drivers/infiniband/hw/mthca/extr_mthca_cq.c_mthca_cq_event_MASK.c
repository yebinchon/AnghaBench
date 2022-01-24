#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq; } ;
struct TYPE_5__ {int num_cqs; } ;
struct mthca_dev {TYPE_4__ cq_table; int /*<<< orphan*/  ib_dev; TYPE_1__ limits; } ;
struct TYPE_7__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;} ;
struct mthca_cq {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; TYPE_3__ ibcq; } ;
struct TYPE_6__ {TYPE_3__* cq; } ;
struct ib_event {int event; TYPE_2__ element; int /*<<< orphan*/ * device; } ;
typedef  enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;

/* Variables and functions */
 struct mthca_cq* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mthca_dev *dev, u32 cqn,
		    enum ib_event_type event_type)
{
	struct mthca_cq *cq;
	struct ib_event event;

	FUNC2(&dev->cq_table.lock);

	cq = FUNC0(&dev->cq_table.cq, cqn & (dev->limits.num_cqs - 1));
	if (cq)
		++cq->refcount;

	FUNC3(&dev->cq_table.lock);

	if (!cq) {
		FUNC1(dev, "Async event for bogus CQ %08x\n", cqn);
		return;
	}

	event.device      = &dev->ib_dev;
	event.event       = event_type;
	event.element.cq  = &cq->ibcq;
	if (cq->ibcq.event_handler)
		cq->ibcq.event_handler(&event, cq->ibcq.cq_context);

	FUNC2(&dev->cq_table.lock);
	if (!--cq->refcount)
		FUNC5(&cq->wait);
	FUNC3(&dev->cq_table.lock);
}