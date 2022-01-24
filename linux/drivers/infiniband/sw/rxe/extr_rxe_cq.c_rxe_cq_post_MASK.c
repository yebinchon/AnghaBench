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
struct rxe_cqe {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* event_handler ) (struct ib_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  device; } ;
struct rxe_cq {scalar_t__ notify; int /*<<< orphan*/  comp_task; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  queue; TYPE_2__ ibcq; } ;
struct TYPE_3__ {TYPE_2__* cq; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_CQ_SOLICITED ; 
 int /*<<< orphan*/  IB_EVENT_CQ_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rxe_cqe*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct rxe_cq *cq, struct rxe_cqe *cqe, int solicited)
{
	struct ib_event ev;
	unsigned long flags;

	FUNC5(&cq->cq_lock, flags);

	if (FUNC9(FUNC3(cq->queue))) {
		FUNC6(&cq->cq_lock, flags);
		if (cq->ibcq.event_handler) {
			ev.device = cq->ibcq.device;
			ev.element.cq = &cq->ibcq;
			ev.event = IB_EVENT_CQ_ERR;
			cq->ibcq.event_handler(&ev, cq->ibcq.cq_context);
		}

		return -EBUSY;
	}

	FUNC1(FUNC2(cq->queue), cqe, sizeof(*cqe));

	/* make sure all changes to the CQ are written before we update the
	 * producer pointer
	 */
	FUNC4();

	FUNC0(cq->queue);
	FUNC6(&cq->cq_lock, flags);

	if ((cq->notify == IB_CQ_NEXT_COMP) ||
	    (cq->notify == IB_CQ_SOLICITED && solicited)) {
		cq->notify = 0;
		FUNC8(&cq->comp_task);
	}

	return 0;
}