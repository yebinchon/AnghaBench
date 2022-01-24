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
struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {TYPE_1__* xrcd; int /*<<< orphan*/  qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_qp {int /*<<< orphan*/  open_list; TYPE_1__* xrcd; int /*<<< orphan*/ * srq; int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/ * pd; struct ib_qp* qp_context; int /*<<< orphan*/  event_handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct ib_qp*) ; 
 struct ib_qp* FUNC3 (struct ib_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ib_shared_qp_event_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ib_qp *FUNC5(struct ib_qp *qp,
					struct ib_qp_init_attr *qp_init_attr,
					struct ib_udata *udata)
{
	struct ib_qp *real_qp = qp;

	qp->event_handler = __ib_shared_qp_event_handler;
	qp->qp_context = qp;
	qp->pd = NULL;
	qp->send_cq = *(qp->recv_cq = NULL);
	qp->srq = NULL;
	qp->xrcd = qp_init_attr->xrcd;
	FUNC4(&qp_init_attr->xrcd->usecnt);
	FUNC0(&qp->open_list);

	qp = FUNC3(real_qp, qp_init_attr->event_handler,
			  qp_init_attr->qp_context);
	if (FUNC1(qp))
		return qp;

	FUNC2(qp_init_attr->xrcd, real_qp);
	return qp;
}