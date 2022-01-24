#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct siw_cqe {int flags; size_t status; size_t opcode; scalar_t__ id; int /*<<< orphan*/  base_qp; int /*<<< orphan*/  inval_stag; int /*<<< orphan*/  bytes; } ;
struct siw_cq {size_t cq_get; size_t num_cqe; int /*<<< orphan*/  lock; int /*<<< orphan*/  kernel_verbs; struct siw_cqe* queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  invalidate_rkey; } ;
struct ib_wc {int /*<<< orphan*/  qp; int /*<<< orphan*/  wc_flags; TYPE_1__ ex; int /*<<< orphan*/  byte_len; int /*<<< orphan*/  opcode; int /*<<< orphan*/  status; scalar_t__ wr_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  ib; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_WITH_INVALIDATE ; 
 int FUNC0 (int) ; 
 int SIW_WQE_REM_INVAL ; 
 int SIW_WQE_VALID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* map_cqe_status ; 
 int /*<<< orphan*/ * map_wc_opcode ; 
 int /*<<< orphan*/  FUNC3 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cq*,char*,int,size_t,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct siw_cq *cq, struct ib_wc *wc)
{
	struct siw_cqe *cqe;
	unsigned long flags;

	FUNC5(&cq->lock, flags);

	cqe = &cq->queue[cq->cq_get % cq->num_cqe];
	if (FUNC0(cqe->flags) & SIW_WQE_VALID) {
		FUNC3(wc, 0, sizeof(*wc));
		wc->wr_id = cqe->id;
		wc->status = map_cqe_status[cqe->status].ib;
		wc->opcode = map_wc_opcode[cqe->opcode];
		wc->byte_len = cqe->bytes;

		/*
		 * During CQ flush, also user land CQE's may get
		 * reaped here, which do not hold a QP reference
		 * and do not qualify for memory extension verbs.
		 */
		if (FUNC2(cq->kernel_verbs)) {
			if (cqe->flags & SIW_WQE_REM_INVAL) {
				wc->ex.invalidate_rkey = cqe->inval_stag;
				wc->wc_flags = IB_WC_WITH_INVALIDATE;
			}
			wc->qp = cqe->base_qp;
			FUNC4(cq,
				   "idx %u, type %d, flags %2x, id 0x%pK\n",
				   cq->cq_get % cq->num_cqe, cqe->opcode,
				   cqe->flags, (void *)(uintptr_t)cqe->id);
		}
		FUNC1(cqe->flags, 0);
		cq->cq_get++;

		FUNC6(&cq->lock, flags);

		return 1;
	}
	FUNC6(&cq->lock, flags);

	return 0;
}