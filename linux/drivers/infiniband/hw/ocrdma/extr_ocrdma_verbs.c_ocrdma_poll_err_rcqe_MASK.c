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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ocrdma_qp {scalar_t__ sq_cq; scalar_t__ rq_cq; int /*<<< orphan*/  srq; TYPE_1__ ibqp; } ;
struct ocrdma_dev {int /*<<< orphan*/ * cqe_err_stats; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 int OCRDMA_CQE_WR_FLUSH_ERR ; 
 int OCRDMA_MAX_CQE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocrdma_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_qp*) ; 
 int FUNC4 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 
 int FUNC5 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 

__attribute__((used)) static bool FUNC6(struct ocrdma_qp *qp, struct ocrdma_cqe *cqe,
				struct ib_wc *ibwc, bool *polled, bool *stop,
				int status)
{
	bool expand;
	struct ocrdma_dev *dev = FUNC1(qp->ibqp.device);

	if (status < OCRDMA_MAX_CQE_ERR)
		FUNC0(&dev->cqe_err_stats[status]);

	/* when hw_rq is empty, but wq is not empty, so continue
	 * to keep the cqe to get the cq event again.
	 */
	if (FUNC2(qp) && !FUNC3(qp)) {
		if (!qp->srq && (qp->sq_cq == qp->rq_cq)) {
			*polled = true;
			status = OCRDMA_CQE_WR_FLUSH_ERR;
			expand = FUNC5(ibwc, cqe, qp, status);
		} else {
			*polled = false;
			*stop = true;
			expand = false;
		}
	} else if (FUNC2(qp)) {
		/* Do nothing */
		expand = false;
		*polled = false;
		*stop = false;
	} else {
		*polled = true;
		expand = FUNC4(ibwc, cqe, qp, status);
	}
	return expand;
}