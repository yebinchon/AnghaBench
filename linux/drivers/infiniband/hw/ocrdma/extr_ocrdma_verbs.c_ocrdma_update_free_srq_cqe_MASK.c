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
struct TYPE_6__ {int max_wqe_idx; } ;
struct ocrdma_srq {TYPE_3__ rq; int /*<<< orphan*/  q_lock; int /*<<< orphan*/ * rqe_wr_id_tbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  srq; } ;
struct ocrdma_qp {TYPE_2__ ibqp; } ;
struct TYPE_4__ {int /*<<< orphan*/  buftag_qpn; } ;
struct ocrdma_cqe {TYPE_1__ rq; } ;
struct ib_wc {int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCRDMA_CQE_BUFTAG_SHIFT ; 
 struct ocrdma_srq* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_srq*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ib_wc *ibwc,
				       struct ocrdma_cqe *cqe,
				       struct ocrdma_qp *qp)
{
	unsigned long flags;
	struct ocrdma_srq *srq;
	u32 wqe_idx;

	srq = FUNC1(qp->ibqp.srq);
	wqe_idx = (FUNC2(cqe->rq.buftag_qpn) >>
		OCRDMA_CQE_BUFTAG_SHIFT) & srq->rq.max_wqe_idx;
	FUNC0(wqe_idx < 1);

	ibwc->wr_id = srq->rqe_wr_id_tbl[wqe_idx];
	FUNC5(&srq->q_lock, flags);
	FUNC4(srq, wqe_idx - 1);
	FUNC6(&srq->q_lock, flags);
	FUNC3(&srq->rq);
}