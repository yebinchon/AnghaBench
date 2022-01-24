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
typedef  int u64 ;
struct TYPE_6__ {int qp_id; } ;
struct i40iw_sc_qp {int qp_type; int virtual_map; TYPE_3__ qp_uk; int /*<<< orphan*/  shadow_area_pa; int /*<<< orphan*/  hw_host_ctx_pa; TYPE_2__* pd; } ;
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_create_qp_info {int tcp_ctx_valid; int cq_num_valid; int arp_cache_idx_valid; int next_iwarp_state; scalar_t__ ord_valid; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_ARPTABIDXVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_CQNUMVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_NEXTIWSTATE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_ORDVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_QPTYPE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_TOECTXVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_VQ ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_CREATE_QP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_INVALID_QP_ID ; 
 int I40IW_ERR_RING_FULL ; 
 int I40IW_MAX_IW_QP_ID ; 
 int I40IW_MIN_IW_QP_ID ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
				struct i40iw_sc_qp *qp,
				struct i40iw_create_qp_info *info,
				u64 scratch,
				bool post_sq)
{
	struct i40iw_sc_cqp *cqp;
	u64 *wqe;
	u64 header;

	if ((qp->qp_uk.qp_id < I40IW_MIN_IW_QP_ID) ||
	    (qp->qp_uk.qp_id > I40IW_MAX_IW_QP_ID))
		return I40IW_ERR_INVALID_QP_ID;

	cqp = qp->pd->dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	FUNC5(wqe, 16, qp->hw_host_ctx_pa);

	FUNC5(wqe, 40, qp->shadow_area_pa);

	header = qp->qp_uk.qp_id |
		 FUNC0(I40IW_CQP_OP_CREATE_QP, I40IW_CQPSQ_OPCODE) |
		 FUNC0((info->ord_valid ? 1 : 0), I40IW_CQPSQ_QP_ORDVALID) |
		 FUNC0(info->tcp_ctx_valid, I40IW_CQPSQ_QP_TOECTXVALID) |
		 FUNC0(qp->qp_type, I40IW_CQPSQ_QP_QPTYPE) |
		 FUNC0(qp->virtual_map, I40IW_CQPSQ_QP_VQ) |
		 FUNC0(info->cq_num_valid, I40IW_CQPSQ_QP_CQNUMVALID) |
		 FUNC0(info->arp_cache_idx_valid, I40IW_CQPSQ_QP_ARPTABIDXVALID) |
		 FUNC0(info->next_iwarp_state, I40IW_CQPSQ_QP_NEXTIWSTATE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);
	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "QP_CREATE WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}