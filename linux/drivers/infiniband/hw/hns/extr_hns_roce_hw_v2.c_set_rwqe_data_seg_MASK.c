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
struct ib_send_wr {int send_flags; int num_sge; scalar_t__ opcode; TYPE_3__* sg_list; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct hns_roce_v2_wqe_data_seg {int dummy; } ;
struct hns_roce_v2_rc_send_wqe {int /*<<< orphan*/  byte_16; int /*<<< orphan*/  byte_20; int /*<<< orphan*/  byte_4; int /*<<< orphan*/  msg_len; } ;
struct TYPE_5__ {int sge_cnt; } ;
struct hns_roce_qp {TYPE_2__ sge; } ;
struct TYPE_4__ {scalar_t__ max_sq_inline; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; TYPE_1__ caps; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; scalar_t__ addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE ; 
 int IB_SEND_INLINE ; 
 scalar_t__ IB_WR_RDMA_READ ; 
 int /*<<< orphan*/  V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M ; 
 int /*<<< orphan*/  V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S ; 
 int /*<<< orphan*/  V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M ; 
 int /*<<< orphan*/  V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S ; 
 int /*<<< orphan*/  V2_RC_SEND_WQE_BYTE_4_INLINE_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_v2_wqe_data_seg*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_qp*,struct ib_send_wr const*,unsigned int*) ; 
 struct hns_roce_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC9 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC10(struct ib_qp *ibqp, const struct ib_send_wr *wr,
			     struct hns_roce_v2_rc_send_wqe *rc_sq_wqe,
			     void *wqe, unsigned int *sge_ind,
			     const struct ib_send_wr **bad_wr)
{
	struct hns_roce_dev *hr_dev = FUNC8(ibqp->device);
	struct hns_roce_v2_wqe_data_seg *dseg = wqe;
	struct hns_roce_qp *qp = FUNC9(ibqp);
	int i;

	if (wr->send_flags & IB_SEND_INLINE && wr->num_sge) {
		if (FUNC1(rc_sq_wqe->msg_len) >
		    hr_dev->caps.max_sq_inline) {
			*bad_wr = wr;
			FUNC0(hr_dev->dev, "inline len(1-%d)=%d, illegal",
				rc_sq_wqe->msg_len, hr_dev->caps.max_sq_inline);
			return -EINVAL;
		}

		if (wr->opcode == IB_WR_RDMA_READ) {
			*bad_wr =  wr;
			FUNC0(hr_dev->dev, "Not support inline data!\n");
			return -EINVAL;
		}

		for (i = 0; i < wr->num_sge; i++) {
			FUNC3(wqe, ((void *)wr->sg_list[i].addr),
			       wr->sg_list[i].length);
			wqe += wr->sg_list[i].length;
		}

		FUNC4(rc_sq_wqe->byte_4, V2_RC_SEND_WQE_BYTE_4_INLINE_S,
			     1);
	} else {
		if (wr->num_sge <= HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE) {
			for (i = 0; i < wr->num_sge; i++) {
				if (FUNC2(wr->sg_list[i].length)) {
					FUNC6(dseg, wr->sg_list + i);
					dseg++;
				}
			}
		} else {
			FUNC5(rc_sq_wqe->byte_20,
				     V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M,
				     V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S,
				     (*sge_ind) & (qp->sge.sge_cnt - 1));

			for (i = 0; i < HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE; i++) {
				if (FUNC2(wr->sg_list[i].length)) {
					FUNC6(dseg, wr->sg_list + i);
					dseg++;
				}
			}

			FUNC7(qp, wr, sge_ind);
		}

		FUNC5(rc_sq_wqe->byte_16,
			       V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M,
			       V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S, wr->num_sge);
	}

	return 0;
}