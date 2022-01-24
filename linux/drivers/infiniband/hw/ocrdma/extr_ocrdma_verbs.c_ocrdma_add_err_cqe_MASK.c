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
struct TYPE_2__ {size_t tail; } ;
struct ocrdma_qp {TYPE_1__ rq; int /*<<< orphan*/ * rqe_wr_id_tbl; struct ocrdma_cq* rq_cq; TYPE_1__ sq; struct ocrdma_cq* sq_cq; } ;
struct ocrdma_cq {int dummy; } ;
struct ib_wc {int /*<<< orphan*/  status; scalar_t__ byte_len; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ FUNC0 (struct ocrdma_qp*) ; 
 scalar_t__ FUNC1 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_qp*,struct ib_wc*,size_t) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_cq *cq, int num_entries,
			      struct ocrdma_qp *qp, struct ib_wc *ibwc)
{
	int err_cqes = 0;

	while (num_entries) {
		if (FUNC1(qp) && FUNC0(qp))
			break;
		if (!FUNC1(qp) && qp->sq_cq == cq) {
			FUNC3(qp, ibwc, qp->sq.tail);
			FUNC2(&qp->sq);
		} else if (!FUNC0(qp) && qp->rq_cq == cq) {
			ibwc->wr_id = qp->rqe_wr_id_tbl[qp->rq.tail];
			FUNC2(&qp->rq);
		} else {
			return err_cqes;
		}
		ibwc->byte_len = 0;
		ibwc->status = IB_WC_WR_FLUSH_ERR;
		ibwc = ibwc + 1;
		err_cqes += 1;
		num_entries -= 1;
	}
	return err_cqes;
}