#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; int /*<<< orphan*/  polarity; } ;
struct i40iw_dma_mem {scalar_t__ pa; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_COMMIT_FPM_VALUES ; 
 scalar_t__ I40IW_CQP_WAIT_POLL_CQ ; 
 scalar_t__ I40IW_CQP_WAIT_POLL_REGS ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int /*<<< orphan*/  I40IW_DONE_COUNT ; 
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_sc_cqp*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (struct i40iw_sc_cqp*) ; 
 int* FUNC6 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,scalar_t__) ; 

__attribute__((used)) static enum i40iw_status_code FUNC9(
					struct i40iw_sc_cqp *cqp,
					u64 scratch,
					u8 hmc_fn_id,
					struct i40iw_dma_mem *commit_fpm_mem,
					bool post_sq,
					u8 wait_type)
{
	u64 *wqe;
	u64 header;
	u32 tail, val, error;
	enum i40iw_status_code ret_code = 0;

	wqe = FUNC6(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	FUNC8(wqe, 16, hmc_fn_id);
	FUNC8(wqe, 32, commit_fpm_mem->pa);

	header = FUNC0(I40IW_CQP_OP_COMMIT_FPM_VALUES, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC4(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "COMMIT_FPM_VALUES WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	FUNC3(cqp, &val, &tail, &error);
	if (error)
		return I40IW_ERR_CQP_COMPL_ERROR;

	if (post_sq) {
		FUNC7(cqp);

		if (wait_type == I40IW_CQP_WAIT_POLL_REGS)
			ret_code = FUNC1(cqp, tail, I40IW_DONE_COUNT);
		else if (wait_type == I40IW_CQP_WAIT_POLL_CQ)
			ret_code = FUNC5(cqp);
	}

	return ret_code;
}