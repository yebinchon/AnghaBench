#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_12__ {int /*<<< orphan*/  max_send_sge; int /*<<< orphan*/  max_send_wr; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_recv_wr; } ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct ib_qp_init_attr {int qp_state; int path_mtu; int rq_psn; int qp_access_flags; int pkey_index; int max_rd_atomic; int max_dest_rd_atomic; int retry_cnt; int cur_qp_state; TYPE_3__ cap; void* rnr_retry; void* timeout; void* min_rnr_timer; scalar_t__ sq_draining; scalar_t__ port_num; TYPE_7__ ah_attr; void* dest_qp_num; scalar_t__ sq_psn; int /*<<< orphan*/  qkey; int /*<<< orphan*/  path_mig_state; } ;
struct ib_qp_attr {int qp_state; int path_mtu; int rq_psn; int qp_access_flags; int pkey_index; int max_rd_atomic; int max_dest_rd_atomic; int retry_cnt; int cur_qp_state; TYPE_3__ cap; void* rnr_retry; void* timeout; void* min_rnr_timer; scalar_t__ sq_draining; scalar_t__ port_num; TYPE_7__ ah_attr; void* dest_qp_num; scalar_t__ sq_psn; int /*<<< orphan*/  qkey; int /*<<< orphan*/  path_mig_state; } ;
struct ib_qp {int /*<<< orphan*/  uobject; int /*<<< orphan*/  device; } ;
struct TYPE_15__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {int flow_label; int sgid_index; int hop_limit; int traffic_class; TYPE_6__ dgid; } ;
struct hns_roce_qp_context {int /*<<< orphan*/  rnr_retry; int /*<<< orphan*/  qpc_bytes_148; int /*<<< orphan*/  qpc_bytes_156; int /*<<< orphan*/  qpc_bytes_24; int /*<<< orphan*/  qpc_bytes_32; int /*<<< orphan*/  qpc_bytes_12; int /*<<< orphan*/  dgid; int /*<<< orphan*/  qpc_bytes_48; int /*<<< orphan*/  qpc_bytes_44; int /*<<< orphan*/  qpc_bytes_36; int /*<<< orphan*/  qpc_bytes_4; int /*<<< orphan*/  qpc_bytes_164; int /*<<< orphan*/  qpc_bytes_88; int /*<<< orphan*/  qpc_bytes_144; } ;
struct TYPE_11__ {int /*<<< orphan*/  max_gs; int /*<<< orphan*/  wqe_cnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  max_gs; int /*<<< orphan*/  wqe_cnt; } ;
struct TYPE_14__ {scalar_t__ qp_type; } ;
struct hns_roce_qp {int state; int /*<<< orphan*/  mutex; TYPE_2__ sq; TYPE_1__ rq; scalar_t__ port; TYPE_5__ ibqp; } ;
struct hns_roce_dev {TYPE_4__* pdev; } ;
struct device {int dummy; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef  enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;
typedef  enum hns_roce_qp_state { ____Placeholder_hns_roce_qp_state } hns_roce_qp_state ;
struct TYPE_13__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_AH_GRH ; 
 int /*<<< orphan*/  IB_MIG_ARMED ; 
 int IB_QPS_RESET ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 scalar_t__ IB_QPT_UD ; 
 int /*<<< orphan*/  QKEY_VAL ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_144_QP_STATE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_144_QP_STATE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_SL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_SL_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_DEST_QP_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_DEST_QP_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_44_HOPLMT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_44_HOPLMT_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_MTU_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_MTU_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_TCLASS_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_TCLASS_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S ; 
 int /*<<< orphan*/  RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_qp*,struct hns_roce_qp_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_qp_context*) ; 
 struct hns_roce_qp_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ib_global_route* FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC15 (struct ib_qp*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr,
			    int qp_attr_mask,
			    struct ib_qp_init_attr *qp_init_attr)
{
	struct hns_roce_dev *hr_dev = FUNC14(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC15(ibqp);
	struct device *dev = &hr_dev->pdev->dev;
	struct hns_roce_qp_context *context;
	int tmp_qp_state = 0;
	int ret = 0;
	int state;

	context = FUNC3(sizeof(*context), GFP_KERNEL);
	if (!context)
		return -ENOMEM;

	FUNC6(qp_attr, 0, sizeof(*qp_attr));
	FUNC6(qp_init_attr, 0, sizeof(*qp_init_attr));

	FUNC7(&hr_qp->mutex);

	if (hr_qp->state == IB_QPS_RESET) {
		qp_attr->qp_state = IB_QPS_RESET;
		goto done;
	}

	ret = FUNC1(hr_dev, hr_qp, context);
	if (ret) {
		FUNC0(dev, "query qpc error\n");
		ret = -EINVAL;
		goto out;
	}

	state = FUNC13(context->qpc_bytes_144,
			       QP_CONTEXT_QPC_BYTES_144_QP_STATE_M,
			       QP_CONTEXT_QPC_BYTES_144_QP_STATE_S);
	tmp_qp_state = (int)FUNC16((enum hns_roce_qp_state)state);
	if (tmp_qp_state == -1) {
		FUNC0(dev, "to_ib_qp_state error\n");
		ret = -EINVAL;
		goto out;
	}
	hr_qp->state = (u8)tmp_qp_state;
	qp_attr->qp_state = (enum ib_qp_state)hr_qp->state;
	qp_attr->path_mtu = (enum ib_mtu)FUNC13(context->qpc_bytes_48,
					       QP_CONTEXT_QPC_BYTES_48_MTU_M,
					       QP_CONTEXT_QPC_BYTES_48_MTU_S);
	qp_attr->path_mig_state = IB_MIG_ARMED;
	qp_attr->ah_attr.type   = RDMA_AH_ATTR_TYPE_ROCE;
	if (hr_qp->ibqp.qp_type == IB_QPT_UD)
		qp_attr->qkey = QKEY_VAL;

	qp_attr->rq_psn = FUNC13(context->qpc_bytes_88,
					 QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M,
					 QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S);
	qp_attr->sq_psn = (u32)FUNC13(context->qpc_bytes_164,
					     QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M,
					     QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S);
	qp_attr->dest_qp_num = (u8)FUNC13(context->qpc_bytes_36,
					QP_CONTEXT_QPC_BYTES_36_DEST_QP_M,
					QP_CONTEXT_QPC_BYTES_36_DEST_QP_S);
	qp_attr->qp_access_flags = ((FUNC12(context->qpc_bytes_4,
			QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S)) << 2) |
				   ((FUNC12(context->qpc_bytes_4,
			QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S)) << 1) |
				   ((FUNC12(context->qpc_bytes_4,
			QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S)) << 3);

	if (hr_qp->ibqp.qp_type == IB_QPT_RC ||
	    hr_qp->ibqp.qp_type == IB_QPT_UC) {
		struct ib_global_route *grh =
			FUNC9(&qp_attr->ah_attr);

		FUNC11(&qp_attr->ah_attr,
			       FUNC13(context->qpc_bytes_156,
					      QP_CONTEXT_QPC_BYTES_156_SL_M,
					      QP_CONTEXT_QPC_BYTES_156_SL_S));
		FUNC10(&qp_attr->ah_attr, IB_AH_GRH);
		grh->flow_label =
			FUNC13(context->qpc_bytes_48,
				       QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M,
				       QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S);
		grh->sgid_index =
			FUNC13(context->qpc_bytes_36,
				       QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M,
				       QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S);
		grh->hop_limit =
			FUNC13(context->qpc_bytes_44,
				       QP_CONTEXT_QPC_BYTES_44_HOPLMT_M,
				       QP_CONTEXT_QPC_BYTES_44_HOPLMT_S);
		grh->traffic_class =
			FUNC13(context->qpc_bytes_48,
				       QP_CONTEXT_QPC_BYTES_48_TCLASS_M,
				       QP_CONTEXT_QPC_BYTES_48_TCLASS_S);

		FUNC5(grh->dgid.raw, context->dgid,
		       sizeof(grh->dgid.raw));
	}

	qp_attr->pkey_index = FUNC13(context->qpc_bytes_12,
			      QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M,
			      QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S);
	qp_attr->port_num = hr_qp->port + 1;
	qp_attr->sq_draining = 0;
	qp_attr->max_rd_atomic = 1 << FUNC13(context->qpc_bytes_156,
				 QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M,
				 QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S);
	qp_attr->max_dest_rd_atomic = 1 << FUNC13(context->qpc_bytes_32,
				 QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M,
				 QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S);
	qp_attr->min_rnr_timer = (u8)(FUNC13(context->qpc_bytes_24,
			QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M,
			QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S));
	qp_attr->timeout = (u8)(FUNC13(context->qpc_bytes_156,
			    QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M,
			    QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S));
	qp_attr->retry_cnt = FUNC13(context->qpc_bytes_148,
			     QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M,
			     QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S);
	qp_attr->rnr_retry = (u8)FUNC4(context->rnr_retry);

done:
	qp_attr->cur_qp_state = qp_attr->qp_state;
	qp_attr->cap.max_recv_wr = hr_qp->rq.wqe_cnt;
	qp_attr->cap.max_recv_sge = hr_qp->rq.max_gs;

	if (!ibqp->uobject) {
		qp_attr->cap.max_send_wr = hr_qp->sq.wqe_cnt;
		qp_attr->cap.max_send_sge = hr_qp->sq.max_gs;
	} else {
		qp_attr->cap.max_send_wr = 0;
		qp_attr->cap.max_send_sge = 0;
	}

	qp_init_attr->cap = qp_attr->cap;

out:
	FUNC8(&hr_qp->mutex);
	FUNC2(context);
	return ret;
}