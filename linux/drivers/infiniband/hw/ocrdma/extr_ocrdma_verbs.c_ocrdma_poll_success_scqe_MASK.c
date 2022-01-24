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
typedef  int u32 ;
struct TYPE_6__ {int tail; int max_wqe_idx; } ;
struct ocrdma_qp {TYPE_3__ sq; int /*<<< orphan*/  ibqp; TYPE_1__* wqe_wr_id_tbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  wqeidx; } ;
struct ocrdma_cqe {TYPE_2__ wq; } ;
struct ib_wc {int /*<<< orphan*/ * qp; scalar_t__ wc_flags; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  signaled; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int OCRDMA_CQE_WQEIDX_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*,struct ib_wc*,int) ; 

__attribute__((used)) static bool FUNC3(struct ocrdma_qp *qp,
				     struct ocrdma_cqe *cqe,
				     struct ib_wc *ibwc, bool *polled)
{
	bool expand = false;
	int tail = qp->sq.tail;
	u32 wqe_idx;

	if (!qp->wqe_wr_id_tbl[tail].signaled) {
		*polled = false;    /* WC cannot be consumed yet */
	} else {
		ibwc->status = IB_WC_SUCCESS;
		ibwc->wc_flags = 0;
		ibwc->qp = &qp->ibqp;
		FUNC2(qp, ibwc, tail);
		*polled = true;
	}
	wqe_idx = (FUNC0(cqe->wq.wqeidx) &
			OCRDMA_CQE_WQEIDX_MASK) & qp->sq.max_wqe_idx;
	if (tail != wqe_idx)
		expand = true; /* Coalesced CQE can't be consumed yet */

	FUNC1(&qp->sq);
	return expand;
}