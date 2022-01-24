#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pdev; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct qp_list {int idx; struct c4iw_qp** qps; } ;
struct TYPE_13__ {scalar_t__ wq_pidx_inc; int /*<<< orphan*/  qid; } ;
struct TYPE_11__ {scalar_t__ wq_pidx_inc; int /*<<< orphan*/  qid; } ;
struct TYPE_17__ {TYPE_3__ rq; TYPE_1__ sq; } ;
struct c4iw_qp {TYPE_6__* rhp; int /*<<< orphan*/  lock; TYPE_7__ wq; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ports; } ;
struct TYPE_15__ {TYPE_4__ lldi; } ;
struct TYPE_16__ {TYPE_5__ rdev; int /*<<< orphan*/  qps; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct uld_ctx *ctx, struct qp_list *qp_list)
{
	int idx;
	int ret;

	for (idx = 0; idx < qp_list->idx; idx++) {
		struct c4iw_qp *qp = qp_list->qps[idx];

		FUNC13(&qp->rhp->qps);
		FUNC6(&qp->lock);
		ret = FUNC1(qp->rhp->rdev.lldi.ports[0],
					  qp->wq.sq.qid,
					  FUNC10(&qp->wq),
					  FUNC11(&qp->wq));
		if (ret) {
			FUNC3("%s: Fatal error - DB overflow recovery failed - error syncing SQ qid %u\n",
			       FUNC2(ctx->lldi.pdev), qp->wq.sq.qid);
			FUNC7(&qp->lock);
			FUNC14(&qp->rhp->qps);
			return;
		}
		qp->wq.sq.wq_pidx_inc = 0;

		ret = FUNC1(qp->rhp->rdev.lldi.ports[0],
					  qp->wq.rq.qid,
					  FUNC8(&qp->wq),
					  FUNC9(&qp->wq));

		if (ret) {
			FUNC3("%s: Fatal error - DB overflow recovery failed - error syncing RQ qid %u\n",
			       FUNC2(ctx->lldi.pdev), qp->wq.rq.qid);
			FUNC7(&qp->lock);
			FUNC14(&qp->rhp->qps);
			return;
		}
		qp->wq.rq.wq_pidx_inc = 0;
		FUNC7(&qp->lock);
		FUNC14(&qp->rhp->qps);

		/* Wait for the dbfifo to drain */
		while (FUNC0(qp->rhp->rdev.lldi.ports[0], 1) > 0) {
			FUNC5(TASK_UNINTERRUPTIBLE);
			FUNC4(FUNC12(10));
		}
	}
}