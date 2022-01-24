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
struct TYPE_4__ {size_t prod; } ;
struct qedr_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; struct qedr_dev* dev; TYPE_2__ sq; TYPE_1__* wqe_wr_id; } ;
struct qedr_dev {int dummy; } ;
struct qed_roce_ll2_packet {int dummy; } ;
struct ib_send_wr {scalar_t__ num_sge; scalar_t__ opcode; struct ib_send_wr* next; int /*<<< orphan*/  wr_id; } ;
struct ib_qp {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,...) ; 
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ IB_WR_SEND ; 
 int /*<<< orphan*/  QEDR_MSG_GSI ; 
 scalar_t__ QED_ROCE_QP_STATE_RTS ; 
 scalar_t__ RDMA_MAX_SGE_PER_SQ_WQE ; 
 struct qedr_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct qedr_dev*,struct qedr_qp*,struct ib_send_wr const*,struct qed_roce_ll2_packet**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct qedr_dev*,struct qed_roce_ll2_packet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct ib_qp *ibqp, const struct ib_send_wr *wr,
		       const struct ib_send_wr **bad_wr)
{
	struct qed_roce_ll2_packet *pkt = NULL;
	struct qedr_qp *qp = FUNC2(ibqp);
	struct qedr_dev *dev = qp->dev;
	unsigned long flags;
	int rc;

	if (qp->state != QED_ROCE_QP_STATE_RTS) {
		*bad_wr = wr;
		FUNC1(dev,
		       "gsi post recv: failed to post rx buffer. state is %d and not QED_ROCE_QP_STATE_RTS\n",
		       qp->state);
		return -EINVAL;
	}

	if (wr->num_sge > RDMA_MAX_SGE_PER_SQ_WQE) {
		FUNC1(dev, "gsi post send: num_sge is too large (%d>%d)\n",
		       wr->num_sge, RDMA_MAX_SGE_PER_SQ_WQE);
		rc = -EINVAL;
		goto err;
	}

	if (wr->opcode != IB_WR_SEND) {
		FUNC1(dev,
		       "gsi post send: failed due to unsupported opcode %d\n",
		       wr->opcode);
		rc = -EINVAL;
		goto err;
	}

	FUNC8(&qp->q_lock, flags);

	rc = FUNC5(dev, qp, wr, &pkt);
	if (rc) {
		FUNC9(&qp->q_lock, flags);
		goto err;
	}

	rc = FUNC7(dev, pkt);

	if (!rc) {
		qp->wqe_wr_id[qp->sq.prod].wr_id = wr->wr_id;
		FUNC6(&qp->sq);
		FUNC0(qp->dev, QEDR_MSG_GSI,
			 "gsi post send: opcode=%d, in_irq=%ld, irqs_disabled=%d, wr_id=%llx\n",
			 wr->opcode, FUNC3(), FUNC4(), wr->wr_id);
	} else {
		FUNC1(dev, "gsi post send: failed to transmit (rc=%d)\n", rc);
		rc = -EAGAIN;
		*bad_wr = wr;
	}

	FUNC9(&qp->q_lock, flags);

	if (wr->next) {
		FUNC1(dev,
		       "gsi post send: failed second WR. Only one WR may be passed at a time\n");
		*bad_wr = wr->next;
		rc = -EINVAL;
	}

	return rc;

err:
	*bad_wr = wr;
	return rc;
}