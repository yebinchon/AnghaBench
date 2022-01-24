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
typedef  int u64 ;
struct TYPE_3__ {int qp_id; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; int /*<<< orphan*/  shadow_area_pa; int /*<<< orphan*/  hw_host_ctx_pa; } ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; TYPE_2__* cqp_ops; } ;
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_ccq_cqe_info {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int (* poll_for_cqp_op_done ) (struct i40iw_sc_cqp*,int,struct i40iw_ccq_cqe_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_CQNUMVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_NEXTIWSTATE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_QP_QPTYPE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_CREATE_QP ; 
 int /*<<< orphan*/  I40IW_DEBUG_PUDA ; 
 int I40IW_ERR_RING_FULL ; 
 int I40IW_QP_TYPE_UDA ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i40iw_sc_cqp*,int,struct i40iw_ccq_cqe_info*) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_sc_dev *dev, struct i40iw_sc_qp *qp)
{
	struct i40iw_sc_cqp *cqp;
	u64 *wqe;
	u64 header;
	struct i40iw_ccq_cqe_info compl_info;
	enum i40iw_status_code status = 0;

	cqp = dev->cqp;
	wqe = FUNC3(cqp, 0);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	FUNC5(wqe, 16, qp->hw_host_ctx_pa);
	FUNC5(wqe, 40, qp->shadow_area_pa);
	header = qp->qp_uk.qp_id |
		 FUNC0(I40IW_CQP_OP_CREATE_QP, I40IW_CQPSQ_OPCODE) |
		 FUNC0(I40IW_QP_TYPE_UDA, I40IW_CQPSQ_QP_QPTYPE) |
		 FUNC0(1, I40IW_CQPSQ_QP_CQNUMVALID) |
		 FUNC0(2, I40IW_CQPSQ_QP_NEXTIWSTATE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_PUDA, "PUDA CQE", wqe, 32);
	FUNC4(cqp);
	status = dev->cqp_ops->poll_for_cqp_op_done(dev->cqp,
						    I40IW_CQP_OP_CREATE_QP,
						    &compl_info);
	return status;
}