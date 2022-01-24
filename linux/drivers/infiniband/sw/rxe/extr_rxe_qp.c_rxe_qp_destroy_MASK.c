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
struct TYPE_8__ {int /*<<< orphan*/  task; } ;
struct TYPE_7__ {int /*<<< orphan*/  task; } ;
struct TYPE_6__ {scalar_t__ queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  task; } ;
struct rxe_qp {TYPE_4__ req; TYPE_3__ comp; TYPE_2__ sq; int /*<<< orphan*/  rnr_nak_timer; int /*<<< orphan*/  retrans_timer; TYPE_1__ resp; scalar_t__ qp_timeout_jiffies; scalar_t__ valid; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_RC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rxe_qp *qp)
{
	qp->valid = 0;
	qp->qp_timeout_jiffies = 0;
	FUNC3(&qp->resp.task);

	if (FUNC2(qp) == IB_QPT_RC) {
		FUNC1(&qp->retrans_timer);
		FUNC1(&qp->rnr_nak_timer);
	}

	FUNC3(&qp->req.task);
	FUNC3(&qp->comp.task);

	/* flush out any receive wr's or pending requests */
	FUNC0(&qp->req.task);
	if (qp->sq.queue) {
		FUNC0(&qp->comp.task);
		FUNC0(&qp->req.task);
	}
}