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
struct TYPE_7__ {int /*<<< orphan*/  srq_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;} ;
struct mthca_srq {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; TYPE_3__ ibsrq; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  srq; } ;
struct TYPE_5__ {int num_srqs; } ;
struct mthca_dev {TYPE_4__ srq_table; int /*<<< orphan*/  ib_dev; TYPE_1__ limits; } ;
struct TYPE_6__ {TYPE_3__* srq; } ;
struct ib_event {int event; TYPE_2__ element; int /*<<< orphan*/ * device; } ;
typedef  enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;

/* Variables and functions */
 struct mthca_srq* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mthca_dev *dev, u32 srqn,
		     enum ib_event_type event_type)
{
	struct mthca_srq *srq;
	struct ib_event event;

	FUNC2(&dev->srq_table.lock);
	srq = FUNC0(&dev->srq_table.srq, srqn & (dev->limits.num_srqs - 1));
	if (srq)
		++srq->refcount;
	FUNC3(&dev->srq_table.lock);

	if (!srq) {
		FUNC1(dev, "Async event for bogus SRQ %08x\n", srqn);
		return;
	}

	if (!srq->ibsrq.event_handler)
		goto out;

	event.device      = &dev->ib_dev;
	event.event       = event_type;
	event.element.srq = &srq->ibsrq;
	srq->ibsrq.event_handler(&event, srq->ibsrq.srq_context);

out:
	FUNC2(&dev->srq_table.lock);
	if (!--srq->refcount)
		FUNC5(&srq->wait);
	FUNC3(&dev->srq_table.lock);
}