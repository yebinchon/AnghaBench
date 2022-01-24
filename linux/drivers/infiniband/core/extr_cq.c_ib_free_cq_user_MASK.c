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
struct ib_udata {int dummy; } ;
struct ib_cq {int poll_ctx; struct ib_cq* wc; struct ib_cq* dim; int /*<<< orphan*/  work; TYPE_2__* device; int /*<<< orphan*/  res; int /*<<< orphan*/  iop; int /*<<< orphan*/  usecnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy_cq ) (struct ib_cq*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
#define  IB_POLL_DIRECT 131 
#define  IB_POLL_SOFTIRQ 130 
#define  IB_POLL_UNBOUND_WORKQUEUE 129 
#define  IB_POLL_WORKQUEUE 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_cq*,struct ib_udata*) ; 

void FUNC7(struct ib_cq *cq, struct ib_udata *udata)
{
	if (FUNC0(FUNC1(&cq->usecnt)))
		return;

	switch (cq->poll_ctx) {
	case IB_POLL_DIRECT:
		break;
	case IB_POLL_SOFTIRQ:
		FUNC3(&cq->iop);
		break;
	case IB_POLL_WORKQUEUE:
	case IB_POLL_UNBOUND_WORKQUEUE:
		FUNC2(&cq->work);
		break;
	default:
		FUNC0(1);
	}

	FUNC5(&cq->res);
	cq->device->ops.destroy_cq(cq, udata);
	if (cq->dim)
		FUNC2(&cq->dim->work);
	FUNC4(cq->dim);
	FUNC4(cq->wc);
	FUNC4(cq);
}