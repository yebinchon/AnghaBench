#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct siw_srq {size_t rq_put; size_t num_rqe; int max_sge; int /*<<< orphan*/  lock; struct siw_rqe* recvq; int /*<<< orphan*/  kernel_verbs; } ;
struct siw_rqe {int num_sge; scalar_t__ flags; int /*<<< orphan*/  sge; int /*<<< orphan*/  id; } ;
struct ib_srq {int /*<<< orphan*/  pd; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SIW_WQE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_srq* FUNC5 (struct ib_srq*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ib_srq *base_srq, const struct ib_recv_wr *wr,
		      const struct ib_recv_wr **bad_wr)
{
	struct siw_srq *srq = FUNC5(base_srq);
	unsigned long flags;
	int rv = 0;

	if (FUNC6(!srq->kernel_verbs)) {
		FUNC1(base_srq->pd,
			   "[SRQ]: no kernel post_recv for mapped srq\n");
		rv = -EINVAL;
		goto out;
	}
	/*
	 * Serialize potentially multiple producers.
	 * Also needed to serialize potentially multiple
	 * consumers.
	 */
	FUNC3(&srq->lock, flags);

	while (wr) {
		u32 idx = srq->rq_put % srq->num_rqe;
		struct siw_rqe *rqe = &srq->recvq[idx];

		if (rqe->flags) {
			FUNC1(base_srq->pd, "SRQ full\n");
			rv = -ENOMEM;
			break;
		}
		if (FUNC6(wr->num_sge > srq->max_sge)) {
			FUNC1(base_srq->pd,
				   "[SRQ]: too many sge's: %d\n", wr->num_sge);
			rv = -EINVAL;
			break;
		}
		rqe->id = wr->wr_id;
		rqe->num_sge = wr->num_sge;
		FUNC0(wr->sg_list, rqe->sge, wr->num_sge);

		/* Make sure S-RQE is completely written before valid */
		FUNC2();

		rqe->flags = SIW_WQE_VALID;

		srq->rq_put++;
		wr = wr->next;
	}
	FUNC4(&srq->lock, flags);
out:
	if (FUNC6(rv < 0)) {
		FUNC1(base_srq->pd, "[SRQ]: error %d\n", rv);
		*bad_wr = wr;
	}
	return rv;
}