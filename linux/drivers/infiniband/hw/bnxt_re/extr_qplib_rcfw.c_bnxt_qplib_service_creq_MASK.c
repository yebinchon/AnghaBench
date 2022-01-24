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
typedef  scalar_t__ u32 ;
struct creq_qp_event {int dummy; } ;
struct creq_func_event {int dummy; } ;
struct creq_base {scalar_t__ type; } ;
struct bnxt_qplib_hwq {scalar_t__ cons; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_elements; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_rcfw {int /*<<< orphan*/  creq_ring_id; int /*<<< orphan*/  creq_bar_reg_iomem; TYPE_2__* pdev; int /*<<< orphan*/  creq_func_event_processed; int /*<<< orphan*/  creq_qp_event_processed; struct bnxt_qplib_hwq creq; TYPE_1__* res; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  cctx; } ;

/* Variables and functions */
 scalar_t__ ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT ; 
#define  CREQ_BASE_TYPE_FUNC_EVENT 129 
 scalar_t__ CREQ_BASE_TYPE_MASK ; 
#define  CREQ_BASE_TYPE_QP_EVENT 128 
 int /*<<< orphan*/  FUNC0 (struct creq_base*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ CREQ_ENTRY_POLL_BUDGET ; 
 scalar_t__ FUNC1 (scalar_t__,struct bnxt_qplib_hwq*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_qplib_rcfw*,struct creq_func_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_qplib_rcfw*,struct creq_qp_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t FUNC8 (scalar_t__) ; 
 size_t FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct bnxt_qplib_rcfw *rcfw = (struct bnxt_qplib_rcfw *)data;
	bool gen_p5 = FUNC2(rcfw->res->cctx);
	struct bnxt_qplib_hwq *creq = &rcfw->creq;
	u32 type, budget = CREQ_ENTRY_POLL_BUDGET;
	struct creq_base *creqe, **creq_ptr;
	u32 sw_cons, raw_cons;
	unsigned long flags;

	/* Service the CREQ until budget is over */
	FUNC10(&creq->lock, flags);
	raw_cons = creq->cons;
	while (budget > 0) {
		sw_cons = FUNC1(raw_cons, creq);
		creq_ptr = (struct creq_base **)creq->pbl_ptr;
		creqe = &creq_ptr[FUNC9(sw_cons)][FUNC8(sw_cons)];
		if (!FUNC0(creqe, raw_cons, creq->max_elements))
			break;
		/* The valid test of the entry must be done first before
		 * reading any further.
		 */
		FUNC7();

		type = creqe->type & CREQ_BASE_TYPE_MASK;
		switch (type) {
		case CREQ_BASE_TYPE_QP_EVENT:
			FUNC4
				(rcfw, (struct creq_qp_event *)creqe);
			rcfw->creq_qp_event_processed++;
			break;
		case CREQ_BASE_TYPE_FUNC_EVENT:
			if (!FUNC3
			    (rcfw, (struct creq_func_event *)creqe))
				rcfw->creq_func_event_processed++;
			else
				FUNC6(&rcfw->pdev->dev,
					 "aeqe:%#x Not handled\n", type);
			break;
		default:
			if (type != ASYNC_EVENT_CMPL_TYPE_HWRM_ASYNC_EVENT)
				FUNC6(&rcfw->pdev->dev,
					 "creqe with event 0x%x not handled\n",
					 type);
			break;
		}
		raw_cons++;
		budget--;
	}

	if (creq->cons != raw_cons) {
		creq->cons = raw_cons;
		FUNC5(rcfw->creq_bar_reg_iomem,
					      raw_cons, creq->max_elements,
					      rcfw->creq_ring_id, gen_p5);
	}
	FUNC11(&creq->lock, flags);
}