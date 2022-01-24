#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t prod; } ;
struct qedr_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_3__ rq; TYPE_4__* rqe_wr_id; } ;
struct qedr_dev {int /*<<< orphan*/  gsi_ll2_handle; int /*<<< orphan*/  rdma_ctx; TYPE_1__* ops; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  wr_id; TYPE_2__* sg_list; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int /*<<< orphan*/  wr_id; TYPE_2__* sg_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int (* ll2_post_rx_buffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,int,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ QEDR_GSI_MAX_RECV_SGE ; 
 scalar_t__ QED_ROCE_QP_STATE_RTR ; 
 scalar_t__ QED_ROCE_QP_STATE_RTS ; 
 struct qedr_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qedr_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC8(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
		       const struct ib_recv_wr **bad_wr)
{
	struct qedr_dev *dev = FUNC1(ibqp->device);
	struct qedr_qp *qp = FUNC2(ibqp);
	unsigned long flags;
	int rc = 0;

	if ((qp->state != QED_ROCE_QP_STATE_RTR) &&
	    (qp->state != QED_ROCE_QP_STATE_RTS)) {
		*bad_wr = wr;
		FUNC0(dev,
		       "gsi post recv: failed to post rx buffer. state is %d and not QED_ROCE_QP_STATE_RTR/S\n",
		       qp->state);
		return -EINVAL;
	}

	FUNC5(&qp->q_lock, flags);

	while (wr) {
		if (wr->num_sge > QEDR_GSI_MAX_RECV_SGE) {
			FUNC0(dev,
			       "gsi post recv: failed to post rx buffer. too many sges %d>%d\n",
			       wr->num_sge, QEDR_GSI_MAX_RECV_SGE);
			goto err;
		}

		rc = dev->ops->ll2_post_rx_buffer(dev->rdma_ctx,
						  dev->gsi_ll2_handle,
						  wr->sg_list[0].addr,
						  wr->sg_list[0].length,
						  NULL /* cookie */,
						  1 /* notify_fw */);
		if (rc) {
			FUNC0(dev,
			       "gsi post recv: failed to post rx buffer (rc=%d)\n",
			       rc);
			goto err;
		}

		FUNC3(&qp->rqe_wr_id[qp->rq.prod], 0,
		       sizeof(qp->rqe_wr_id[qp->rq.prod]));
		qp->rqe_wr_id[qp->rq.prod].sg_list[0] = wr->sg_list[0];
		qp->rqe_wr_id[qp->rq.prod].wr_id = wr->wr_id;

		FUNC4(&qp->rq);

		wr = wr->next;
	}

	FUNC6(&qp->q_lock, flags);

	return rc;
err:
	FUNC6(&qp->q_lock, flags);
	*bad_wr = wr;
	return -ENOMEM;
}