#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct siw_wqe {int dummy; } ;
struct siw_srq {size_t num_rqe; size_t rq_get; size_t limit; int /*<<< orphan*/  lock; scalar_t__ armed; struct siw_rqe* recvq; } ;
struct siw_rqe {int flags; int num_sge; TYPE_2__* sge; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {size_t rq_size; } ;
struct siw_qp {size_t rq_get; int /*<<< orphan*/  rx_untagged; TYPE_1__ attrs; struct siw_rqe* recvq; struct siw_srq* srq; } ;
typedef  TYPE_5__* rx_type ;
struct TYPE_10__ {int num_sge; TYPE_3__* sge; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int /*<<< orphan*/ ** mem; TYPE_4__ rqe; scalar_t__ bytes; scalar_t__ processed; int /*<<< orphan*/  wr_status; } ;
struct TYPE_9__ {scalar_t__ length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  laddr; } ;
struct TYPE_8__ {scalar_t__ length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_SRQ_LIMIT_REACHED ; 
 int SIW_MAX_SGE ; 
 TYPE_5__* SIW_OP_RECEIVE ; 
 int SIW_WQE_VALID ; 
 int /*<<< orphan*/  SIW_WR_INPROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 struct siw_wqe* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_srq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct siw_wqe *FUNC8(struct siw_qp *qp)
{
	struct siw_rqe *rqe;
	struct siw_srq *srq;
	struct siw_wqe *wqe = NULL;
	bool srq_event = false;
	unsigned long flags;

	srq = qp->srq;
	if (srq) {
		FUNC5(&srq->lock, flags);
		if (FUNC7(!srq->num_rqe))
			goto out;

		rqe = &srq->recvq[srq->rq_get % srq->num_rqe];
	} else {
		if (FUNC7(!qp->recvq))
			goto out;

		rqe = &qp->recvq[qp->rq_get % qp->attrs.rq_size];
	}
	if (FUNC0(rqe->flags == SIW_WQE_VALID)) {
		int num_sge = rqe->num_sge;

		if (FUNC0(num_sge <= SIW_MAX_SGE)) {
			int i = 0;

			wqe = FUNC1(&qp->rx_untagged);
			rx_type(wqe) = SIW_OP_RECEIVE;
			wqe->wr_status = SIW_WR_INPROGRESS;
			wqe->bytes = 0;
			wqe->processed = 0;

			wqe->rqe.id = rqe->id;
			wqe->rqe.num_sge = num_sge;

			while (i < num_sge) {
				wqe->rqe.sge[i].laddr = rqe->sge[i].laddr;
				wqe->rqe.sge[i].lkey = rqe->sge[i].lkey;
				wqe->rqe.sge[i].length = rqe->sge[i].length;
				wqe->bytes += wqe->rqe.sge[i].length;
				wqe->mem[i] = NULL;
				i++;
			}
			/* can be re-used by appl */
			FUNC4(rqe->flags, 0);
		} else {
			FUNC2(qp, "too many sge's: %d\n", rqe->num_sge);
			if (srq)
				FUNC6(&srq->lock, flags);
			return NULL;
		}
		if (!srq) {
			qp->rq_get++;
		} else {
			if (srq->armed) {
				/* Test SRQ limit */
				u32 off = (srq->rq_get + srq->limit) %
					  srq->num_rqe;
				struct siw_rqe *rqe2 = &srq->recvq[off];

				if (!(rqe2->flags & SIW_WQE_VALID)) {
					srq->armed = 0;
					srq_event = true;
				}
			}
			srq->rq_get++;
		}
	}
out:
	if (srq) {
		FUNC6(&srq->lock, flags);
		if (srq_event)
			FUNC3(srq, IB_EVENT_SRQ_LIMIT_REACHED);
	}
	return wqe;
}