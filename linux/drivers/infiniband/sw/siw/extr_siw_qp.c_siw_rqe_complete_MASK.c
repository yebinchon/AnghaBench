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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct siw_rqe {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
struct siw_qp {int /*<<< orphan*/  ib_qp; struct siw_cq* rcq; } ;
struct siw_cqe {int status; size_t bytes; size_t inval_stag; int /*<<< orphan*/  flags; int /*<<< orphan*/  qp_id; int /*<<< orphan*/  base_qp; scalar_t__ imm_data; int /*<<< orphan*/  opcode; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct siw_cq {size_t cq_put; size_t num_cqe; int /*<<< orphan*/  lock; TYPE_1__ base_cq; scalar_t__ kernel_verbs; struct siw_cqe* queue; } ;
typedef  enum siw_wc_status { ____Placeholder_siw_wc_status } siw_wc_status ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IB_EVENT_CQ_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIW_OP_RECEIVE ; 
 int /*<<< orphan*/  SIW_WQE_REM_INVAL ; 
 int /*<<< orphan*/  SIW_WQE_SIGNALLED ; 
 int /*<<< orphan*/  SIW_WQE_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cq*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct siw_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_cq*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC10(struct siw_qp *qp, struct siw_rqe *rqe, u32 bytes,
		     u32 inval_stag, enum siw_wc_status status)
{
	struct siw_cq *cq = qp->rcq;
	int rv = 0;

	if (cq) {
		struct siw_cqe *cqe;
		u32 idx;
		unsigned long flags;

		FUNC7(&cq->lock, flags);

		idx = cq->cq_put % cq->num_cqe;
		cqe = &cq->queue[idx];

		if (!FUNC0(cqe->flags)) {
			bool notify;
			u8 cqe_flags = SIW_WQE_VALID;

			cqe->id = rqe->id;
			cqe->opcode = SIW_OP_RECEIVE;
			cqe->status = status;
			cqe->imm_data = 0;
			cqe->bytes = bytes;

			if (cq->kernel_verbs) {
				cqe->base_qp = qp->ib_qp;
				if (inval_stag) {
					cqe_flags |= SIW_WQE_REM_INVAL;
					cqe->inval_stag = inval_stag;
				}
			} else {
				cqe->qp_id = FUNC2(qp);
			}
			/* mark CQE valid for application */
			FUNC1(cqe->flags, cqe_flags);
			/* recycle RQE */
			FUNC6(rqe->flags, 0);

			cq->cq_put++;
			notify = FUNC4(cq, SIW_WQE_SIGNALLED);

			FUNC8(&cq->lock, flags);

			if (notify) {
				FUNC5(cq, "Call completion handler\n");
				cq->base_cq.comp_handler(&cq->base_cq,
						cq->base_cq.cq_context);
			}
		} else {
			FUNC8(&cq->lock, flags);
			rv = -ENOMEM;
			FUNC3(cq, IB_EVENT_CQ_ERR);
		}
	} else {
		/* recycle RQE */
		FUNC6(rqe->flags, 0);
	}
	return rv;
}