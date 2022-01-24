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
typedef  scalar_t__ u16 ;
struct regpair {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct qedr_cq {scalar_t__ sig; int /*<<< orphan*/  cnq_notif; TYPE_1__ ibcq; int /*<<< orphan*/  destroyed; scalar_t__ arm_flags; } ;
struct qedr_cnq {int /*<<< orphan*/  sb; int /*<<< orphan*/  index; TYPE_3__* dev; int /*<<< orphan*/  n_comp; int /*<<< orphan*/  pbl; int /*<<< orphan*/ * hw_cons_ptr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  rdma_ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* rdma_cnq_prod_update ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qedr_cq*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ QEDR_CQ_MAGIC_NUMBER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* qed_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *handle)
{
	u16 hw_comp_cons, sw_comp_cons;
	struct qedr_cnq *cnq = handle;
	struct regpair *cq_handle;
	struct qedr_cq *cq;

	FUNC5(cnq->sb, IGU_INT_DISABLE, 0);

	FUNC6(cnq->sb);

	hw_comp_cons = FUNC2(*cnq->hw_cons_ptr);
	sw_comp_cons = FUNC4(&cnq->pbl);

	/* Align protocol-index and chain reads */
	FUNC7();

	while (sw_comp_cons != hw_comp_cons) {
		cq_handle = (struct regpair *)FUNC3(&cnq->pbl);
		cq = (struct qedr_cq *)(uintptr_t)FUNC1(cq_handle->hi,
				cq_handle->lo);

		if (cq == NULL) {
			FUNC0(cnq->dev,
			       "Received NULL CQ cq_handle->hi=%d cq_handle->lo=%d sw_comp_cons=%d hw_comp_cons=%d\n",
			       cq_handle->hi, cq_handle->lo, sw_comp_cons,
			       hw_comp_cons);

			break;
		}

		if (cq->sig != QEDR_CQ_MAGIC_NUMBER) {
			FUNC0(cnq->dev,
			       "Problem with cq signature, cq_handle->hi=%d ch_handle->lo=%d cq=%p\n",
			       cq_handle->hi, cq_handle->lo, cq);
			break;
		}

		cq->arm_flags = 0;

		if (!cq->destroyed && cq->ibcq.comp_handler)
			(*cq->ibcq.comp_handler)
				(&cq->ibcq, cq->ibcq.cq_context);

		/* The CQ's CNQ notification counter is checked before
		 * destroying the CQ in a busy-wait loop that waits for all of
		 * the CQ's CNQ interrupts to be processed. It is increased
		 * here, only after the completion handler, to ensure that the
		 * the handler is not running when the CQ is destroyed.
		 */
		cq->cnq_notif++;

		sw_comp_cons = FUNC4(&cnq->pbl);

		cnq->n_comp++;
	}

	qed_ops->rdma_cnq_prod_update(cnq->dev->rdma_ctx, cnq->index,
				      sw_comp_cons);

	FUNC5(cnq->sb, IGU_INT_ENABLE, 1);

	return IRQ_HANDLED;
}