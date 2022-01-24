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
struct siw_sqe {int /*<<< orphan*/  flags; } ;
struct siw_wqe {scalar_t__ wr_status; int /*<<< orphan*/  bytes; struct siw_sqe sqe; } ;
struct TYPE_2__ {int orq_size; int sq_size; } ;
struct siw_qp {size_t orq_get; size_t sq_get; TYPE_1__ attrs; struct siw_sqe* sendq; struct siw_sqe* orq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_SQ_DRAINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIW_OP_READ ; 
 scalar_t__ SIW_OP_READ_LOCAL_INV ; 
 scalar_t__ SIW_OP_READ_RESPONSE ; 
 int /*<<< orphan*/  SIW_WC_WR_FLUSH_ERR ; 
 scalar_t__ SIW_WR_IDLE ; 
 scalar_t__ SIW_WR_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct siw_qp*,struct siw_sqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_wqe*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct siw_wqe*) ; 
 struct siw_wqe* FUNC7 (struct siw_qp*) ; 

void FUNC8(struct siw_qp *qp)
{
	struct siw_sqe *sqe;
	struct siw_wqe *wqe = FUNC7(qp);
	int async_event = 0;

	/*
	 * Start with completing any work currently on the ORQ
	 */
	while (qp->attrs.orq_size) {
		sqe = &qp->orq[qp->orq_get % qp->attrs.orq_size];
		if (!FUNC0(sqe->flags))
			break;

		if (FUNC4(qp, sqe, 0, SIW_WC_WR_FLUSH_ERR) != 0)
			break;

		FUNC1(sqe->flags, 0);
		qp->orq_get++;
	}
	/*
	 * Flush an in-progress WQE if present
	 */
	if (wqe->wr_status != SIW_WR_IDLE) {
		FUNC2(qp, "flush current SQE, type %d, status %d\n",
			   FUNC6(wqe), wqe->wr_status);

		FUNC5(wqe, FUNC6(wqe));

		if (FUNC6(wqe) != SIW_OP_READ_RESPONSE &&
		    ((FUNC6(wqe) != SIW_OP_READ &&
		      FUNC6(wqe) != SIW_OP_READ_LOCAL_INV) ||
		     wqe->wr_status == SIW_WR_QUEUED))
			/*
			 * An in-progress Read Request is already in
			 * the ORQ
			 */
			FUNC4(qp, &wqe->sqe, wqe->bytes,
					 SIW_WC_WR_FLUSH_ERR);

		wqe->wr_status = SIW_WR_IDLE;
	}
	/*
	 * Flush the Send Queue
	 */
	while (qp->attrs.sq_size) {
		sqe = &qp->sendq[qp->sq_get % qp->attrs.sq_size];
		if (!FUNC0(sqe->flags))
			break;

		async_event = 1;
		if (FUNC4(qp, sqe, 0, SIW_WC_WR_FLUSH_ERR) != 0)
			/*
			 * Shall IB_EVENT_SQ_DRAINED be supressed if work
			 * completion fails?
			 */
			break;

		FUNC1(sqe->flags, 0);
		qp->sq_get++;
	}
	if (async_event)
		FUNC3(qp, IB_EVENT_SQ_DRAINED);
}