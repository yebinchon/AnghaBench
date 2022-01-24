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
struct ib_qp_attr {int dummy; } ;
struct ib_qp {scalar_t__ recv_cq; scalar_t__ send_cq; scalar_t__ srq; int /*<<< orphan*/  uobject; int /*<<< orphan*/  device; } ;
struct hns_roce_v2_qp_context {int /*<<< orphan*/  byte_60_qpst_tempid; int /*<<< orphan*/  byte_108_rx_reqepsn; int /*<<< orphan*/  byte_84_rq_ci_pi; int /*<<< orphan*/  byte_160_sq_ci_pi; } ;
struct TYPE_6__ {scalar_t__* db_record; } ;
struct TYPE_5__ {int head; scalar_t__ wqe_cnt; scalar_t__ tail; } ;
struct TYPE_4__ {int head; scalar_t__ tail; } ;
struct hns_roce_qp {int state; TYPE_3__ rdb; TYPE_2__ rq; scalar_t__ next_sge; scalar_t__ sq_next_wqe; TYPE_1__ sq; int /*<<< orphan*/  qpn; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int IB_QPS_ERR ; 
 int IB_QPS_RESET ; 
 int /*<<< orphan*/  V2_QPC_BYTE_108_INV_CREDIT_S ; 
 int /*<<< orphan*/  V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M ; 
 int /*<<< orphan*/  V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S ; 
 int /*<<< orphan*/  V2_QPC_BYTE_60_QP_ST_M ; 
 int /*<<< orphan*/  V2_QPC_BYTE_60_QP_ST_S ; 
 int /*<<< orphan*/  V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M ; 
 int /*<<< orphan*/  V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hns_roce_dev*,int,int,struct hns_roce_v2_qp_context*,struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_qp*,struct ib_qp_attr const*,int) ; 
 int FUNC4 (struct ib_qp*,struct ib_qp_attr const*,int,int,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 int FUNC5 (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_v2_qp_context*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct hns_roce_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC11 (struct ib_qp*) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct ib_qp *ibqp,
				 const struct ib_qp_attr *attr,
				 int attr_mask, enum ib_qp_state cur_state,
				 enum ib_qp_state new_state)
{
	struct hns_roce_dev *hr_dev = FUNC10(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC11(ibqp);
	struct hns_roce_v2_qp_context ctx[2];
	struct hns_roce_v2_qp_context *context = ctx;
	struct hns_roce_v2_qp_context *qpc_mask = ctx + 1;
	struct device *dev = hr_dev->dev;
	int ret;

	/*
	 * In v2 engine, software pass context and context mask to hardware
	 * when modifying qp. If software need modify some fields in context,
	 * we should set all bits of the relevant fields in context mask to
	 * 0 at the same time, else set them to 0x1.
	 */
	FUNC6(context, 0, sizeof(*context));
	FUNC6(qpc_mask, 0xff, sizeof(*qpc_mask));
	ret = FUNC4(ibqp, attr, attr_mask, cur_state,
					 new_state, context, qpc_mask);
	if (ret)
		goto out;

	/* When QP state is err, SQ and RQ WQE should be flushed */
	if (new_state == IB_QPS_ERR) {
		FUNC8(context->byte_160_sq_ci_pi,
			       V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M,
			       V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S,
			       hr_qp->sq.head);
		FUNC8(qpc_mask->byte_160_sq_ci_pi,
			       V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M,
			       V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S, 0);

		if (!ibqp->srq) {
			FUNC8(context->byte_84_rq_ci_pi,
			       V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M,
			       V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S,
			       hr_qp->rq.head);
			FUNC8(qpc_mask->byte_84_rq_ci_pi,
			       V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M,
			       V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S, 0);
		}
	}

	/* Configure the optional fields */
	ret = FUNC5(ibqp, attr, attr_mask, context,
					 qpc_mask);
	if (ret)
		goto out;

	FUNC7(context->byte_108_rx_reqepsn, V2_QPC_BYTE_108_INV_CREDIT_S,
		     ibqp->srq ? 1 : 0);
	FUNC7(qpc_mask->byte_108_rx_reqepsn,
		     V2_QPC_BYTE_108_INV_CREDIT_S, 0);

	/* Every status migrate must change state */
	FUNC8(context->byte_60_qpst_tempid, V2_QPC_BYTE_60_QP_ST_M,
		       V2_QPC_BYTE_60_QP_ST_S, new_state);
	FUNC8(qpc_mask->byte_60_qpst_tempid, V2_QPC_BYTE_60_QP_ST_M,
		       V2_QPC_BYTE_60_QP_ST_S, 0);

	/* SW pass context to HW */
	ret = FUNC2(hr_dev, cur_state, new_state, ctx, hr_qp);
	if (ret) {
		FUNC0(dev, "hns_roce_qp_modify failed(%d)\n", ret);
		goto out;
	}

	hr_qp->state = new_state;

	FUNC3(ibqp, attr, attr_mask);

	if (new_state == IB_QPS_RESET && !ibqp->uobject) {
		FUNC1(FUNC9(ibqp->recv_cq), hr_qp->qpn,
				     ibqp->srq ? FUNC12(ibqp->srq) : NULL);
		if (ibqp->send_cq != ibqp->recv_cq)
			FUNC1(FUNC9(ibqp->send_cq),
					     hr_qp->qpn, NULL);

		hr_qp->rq.head = 0;
		hr_qp->rq.tail = 0;
		hr_qp->sq.head = 0;
		hr_qp->sq.tail = 0;
		hr_qp->sq_next_wqe = 0;
		hr_qp->next_sge = 0;
		if (hr_qp->rq.wqe_cnt)
			*hr_qp->rdb.db_record = 0;
	}

out:
	return ret;
}