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
typedef  size_t u32 ;
struct siw_rqe {int num_sge; scalar_t__ flags; int /*<<< orphan*/  sge; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {scalar_t__ state; size_t rq_size; int rq_max_sges; } ;
struct siw_qp {size_t rq_put; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  rq_lock; TYPE_1__ attrs; struct siw_rqe* recvq; int /*<<< orphan*/  kernel_verbs; scalar_t__ srq; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  wr_id; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ SIW_QP_STATE_RTS ; 
 scalar_t__ SIW_WQE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_qp* FUNC6 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ib_qp *base_qp, const struct ib_recv_wr *wr,
		     const struct ib_recv_wr **bad_wr)
{
	struct siw_qp *qp = FUNC6(base_qp);
	unsigned long flags;
	int rv = 0;

	if (qp->srq) {
		*bad_wr = wr;
		return -EOPNOTSUPP; /* what else from errno.h? */
	}
	/*
	 * Try to acquire QP state lock. Must be non-blocking
	 * to accommodate kernel clients needs.
	 */
	if (!FUNC0(&qp->state_lock)) {
		*bad_wr = wr;
		return -ENOTCONN;
	}
	if (!qp->kernel_verbs) {
		FUNC2(qp, "no kernel post_recv for user mapped sq\n");
		FUNC7(&qp->state_lock);
		*bad_wr = wr;
		return -EINVAL;
	}
	if (qp->attrs.state > SIW_QP_STATE_RTS) {
		FUNC7(&qp->state_lock);
		*bad_wr = wr;
		return -EINVAL;
	}
	/*
	 * Serialize potentially multiple producers.
	 * Not needed for single threaded consumer side.
	 */
	FUNC4(&qp->rq_lock, flags);

	while (wr) {
		u32 idx = qp->rq_put % qp->attrs.rq_size;
		struct siw_rqe *rqe = &qp->recvq[idx];

		if (rqe->flags) {
			FUNC2(qp, "RQ full\n");
			rv = -ENOMEM;
			break;
		}
		if (wr->num_sge > qp->attrs.rq_max_sges) {
			FUNC2(qp, "too many sge's: %d\n", wr->num_sge);
			rv = -EINVAL;
			break;
		}
		rqe->id = wr->wr_id;
		rqe->num_sge = wr->num_sge;
		FUNC1(wr->sg_list, rqe->sge, wr->num_sge);

		/* make sure RQE is completely written before valid */
		FUNC3();

		rqe->flags = SIW_WQE_VALID;

		qp->rq_put++;
		wr = wr->next;
	}
	FUNC5(&qp->rq_lock, flags);

	FUNC7(&qp->state_lock);

	if (rv < 0) {
		FUNC2(qp, "error %d\n", rv);
		*bad_wr = wr;
	}
	return rv > 0 ? 0 : rv;
}