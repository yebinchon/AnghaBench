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
struct i40iw_sc_qp {int qp_type; TYPE_3__ qp_uk; int /*<<< orphan*/  shadow_area_pa; int /*<<< orphan*/  hw_host_ctx_pa; TYPE_2__* pd; } ;
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct i40iw_sc_cqp* cqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_IGNOREMWBOUND ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_QPTYPE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_REMOVEHASHENTRY ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_DESTROY_QP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_qp*) ; 
 int* FUNC4 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(
					struct i40iw_sc_qp *qp,
					u64 scratch,
					bool remove_hash_idx,
					bool ignore_mw_bnd,
					bool post_sq)
{
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;
	u64 header;

	FUNC3(qp);
	cqp = qp->pd->dev->cqp;
	wqe = FUNC4(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC6(wqe, 16, qp->hw_host_ctx_pa);
	FUNC6(wqe, 40, qp->shadow_area_pa);

	header = qp->qp_uk.qp_id |
		 FUNC0(I40IW_CQP_OP_DESTROY_QP, I40IW_CQPSQ_OPCODE) |
		 FUNC0(qp->qp_type, I40IW_CQPSQ_QP_QPTYPE) |
		 FUNC0(ignore_mw_bnd, I40IW_CQPSQ_QP_IGNOREMWBOUND) |
		 FUNC0(remove_hash_idx, I40IW_CQPSQ_QP_REMOVEHASHENTRY) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);
	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "QP_DESTROY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC5(cqp);
	return 0;
}