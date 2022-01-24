#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct siw_rqe {int /*<<< orphan*/  flags; } ;
struct siw_wqe {scalar_t__ wr_status; int /*<<< orphan*/  sqe; int /*<<< orphan*/  bytes; struct siw_rqe rqe; } ;
struct TYPE_6__ {int rq_size; } ;
struct TYPE_5__ {struct siw_wqe wqe_active; } ;
struct TYPE_4__ {struct siw_wqe wqe_active; } ;
struct siw_qp {size_t rq_get; TYPE_3__ attrs; struct siw_rqe* recvq; TYPE_2__ rx_tagged; TYPE_1__ rx_untagged; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIW_OP_READ ; 
 scalar_t__ SIW_OP_READ_RESPONSE ; 
 scalar_t__ SIW_OP_RECEIVE ; 
 scalar_t__ SIW_OP_WRITE ; 
 int /*<<< orphan*/  SIW_WC_WR_FLUSH_ERR ; 
 scalar_t__ SIW_WR_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct siw_wqe*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_qp*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct siw_qp*,struct siw_rqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_qp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_wqe*,scalar_t__) ; 

void FUNC7(struct siw_qp *qp)
{
	struct siw_wqe *wqe = &qp->rx_untagged.wqe_active;

	/*
	 * Flush an in-progress untagged operation if present
	 */
	if (wqe->wr_status != SIW_WR_IDLE) {
		FUNC3(qp, "flush current rqe, type %d, status %d\n",
			   FUNC2(wqe), wqe->wr_status);

		FUNC6(wqe, FUNC2(wqe));

		if (FUNC2(wqe) == SIW_OP_RECEIVE) {
			FUNC4(qp, &wqe->rqe, wqe->bytes,
					 0, SIW_WC_WR_FLUSH_ERR);
		} else if (FUNC2(wqe) != SIW_OP_READ &&
			   FUNC2(wqe) != SIW_OP_READ_RESPONSE &&
			   FUNC2(wqe) != SIW_OP_WRITE) {
			FUNC5(qp, &wqe->sqe, 0, SIW_WC_WR_FLUSH_ERR);
		}
		wqe->wr_status = SIW_WR_IDLE;
	}
	wqe = &qp->rx_tagged.wqe_active;

	if (wqe->wr_status != SIW_WR_IDLE) {
		FUNC6(wqe, FUNC2(wqe));
		wqe->wr_status = SIW_WR_IDLE;
	}
	/*
	 * Flush the Receive Queue
	 */
	while (qp->attrs.rq_size) {
		struct siw_rqe *rqe =
			&qp->recvq[qp->rq_get % qp->attrs.rq_size];

		if (!FUNC0(rqe->flags))
			break;

		if (FUNC4(qp, rqe, 0, 0, SIW_WC_WR_FLUSH_ERR) != 0)
			break;

		FUNC1(rqe->flags, 0);
		qp->rq_get++;
	}
}