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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ pa; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ pa; } ;
struct ocrdma_qp {scalar_t__ state; struct ocrdma_qp* rqe_wr_id_tbl; struct ocrdma_qp* wqe_wr_id_tbl; TYPE_2__ rq; int /*<<< orphan*/  srq; TYPE_1__ sq; TYPE_3__* rq_cq; TYPE_3__* sq_cq; struct ocrdma_pd* pd; } ;
struct ocrdma_pd {scalar_t__ uctx; } ;
struct ocrdma_dev {int /*<<< orphan*/  dev_lock; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  cq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int IB_QP_STATE ; 
 scalar_t__ OCRDMA_QPS_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 struct ocrdma_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ocrdma_qp* FUNC3 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocrdma_dev*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocrdma_qp*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocrdma_dev*,struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC16(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct ocrdma_pd *pd;
	struct ocrdma_qp *qp;
	struct ocrdma_dev *dev;
	struct ib_qp_attr attrs;
	int attr_mask;
	unsigned long flags;

	qp = FUNC3(ibqp);
	dev = FUNC2(ibqp->device);

	pd = qp->pd;

	/* change the QP state to ERROR */
	if (qp->state != OCRDMA_QPS_RST) {
		attrs.qp_state = IB_QPS_ERR;
		attr_mask = IB_QP_STATE;
		FUNC1(ibqp, &attrs, attr_mask);
	}
	/* ensure that CQEs for newly created QP (whose id may be same with
	 * one which just getting destroyed are same), dont get
	 * discarded until the old CQEs are discarded.
	 */
	FUNC5(&dev->dev_lock);
	(void) FUNC11(dev, qp);

	/*
	 * acquire CQ lock while destroy is in progress, in order to
	 * protect against proessing in-flight CQEs for this QP.
	 */
	FUNC13(&qp->sq_cq->cq_lock, flags);
	if (qp->rq_cq && (qp->rq_cq != qp->sq_cq)) {
		FUNC12(&qp->rq_cq->cq_lock);
		FUNC9(dev, qp);
		FUNC14(&qp->rq_cq->cq_lock);
	} else {
		FUNC9(dev, qp);
	}
	FUNC15(&qp->sq_cq->cq_lock, flags);

	if (!pd->uctx) {
		FUNC10(qp, qp->sq_cq);
		FUNC10(qp, qp->rq_cq);
	}
	FUNC6(&dev->dev_lock);

	if (pd->uctx) {
		FUNC8(pd->uctx, (u64) qp->sq.pa,
				FUNC0(qp->sq.len));
		if (!qp->srq)
			FUNC8(pd->uctx, (u64) qp->rq.pa,
					FUNC0(qp->rq.len));
	}

	FUNC7(qp);

	FUNC4(qp->wqe_wr_id_tbl);
	FUNC4(qp->rqe_wr_id_tbl);
	FUNC4(qp);
	return 0;
}