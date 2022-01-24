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
struct rxe_rq {int /*<<< orphan*/  producer_lock; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  task; } ;
struct rxe_qp {int srq; TYPE_1__ resp; int /*<<< orphan*/  valid; struct rxe_rq rq; } ;
struct ib_recv_wr {struct ib_recv_wr* next; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_QPS_INIT ; 
 scalar_t__ QP_STATE_ERROR ; 
 int FUNC0 (struct rxe_rq*,struct ib_recv_wr const*) ; 
 scalar_t__ FUNC1 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rxe_qp* FUNC5 (struct ib_qp*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
			 const struct ib_recv_wr **bad_wr)
{
	int err = 0;
	struct rxe_qp *qp = FUNC5(ibqp);
	struct rxe_rq *rq = &qp->rq;
	unsigned long flags;

	if (FUNC6((FUNC1(qp) < IB_QPS_INIT) || !qp->valid)) {
		*bad_wr = wr;
		err = -EINVAL;
		goto err1;
	}

	if (FUNC6(qp->srq)) {
		*bad_wr = wr;
		err = -EINVAL;
		goto err1;
	}

	FUNC3(&rq->producer_lock, flags);

	while (wr) {
		err = FUNC0(rq, wr);
		if (FUNC6(err)) {
			*bad_wr = wr;
			break;
		}
		wr = wr->next;
	}

	FUNC4(&rq->producer_lock, flags);

	if (qp->resp.state == QP_STATE_ERROR)
		FUNC2(&qp->resp.task, 1);

err1:
	return err;
}