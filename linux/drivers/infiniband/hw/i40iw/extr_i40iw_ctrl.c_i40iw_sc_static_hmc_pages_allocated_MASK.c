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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; int /*<<< orphan*/  polarity; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_SHMC_PAGES_ALLOCATED ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int I40IW_ERR_RING_FULL ; 
 int /*<<< orphan*/  I40IW_SHMC_PAGE_ALLOCATED_HMC_FN_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_sc_cqp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int* FUNC5 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_sc_cqp*) ; 
 int FUNC7 (struct i40iw_sc_cqp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 

enum i40iw_status_code FUNC9(
					struct i40iw_sc_cqp *cqp,
					u64 scratch,
					u8 hmc_fn_id,
					bool post_sq,
					bool poll_registers)
{
	u64 header;
	u64 *wqe;
	u32 tail, val, error;
	enum i40iw_status_code ret_code = 0;

	wqe = FUNC5(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC8(wqe,
		      16,
		      FUNC0(hmc_fn_id, I40IW_SHMC_PAGE_ALLOCATED_HMC_FN_ID));

	header = FUNC0(I40IW_CQP_OP_SHMC_PAGES_ALLOCATED, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC4(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "SHMC_PAGES_ALLOCATED WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);
	FUNC3(cqp, &val, &tail, &error);
	if (error) {
		ret_code = I40IW_ERR_CQP_COMPL_ERROR;
		return ret_code;
	}
	if (post_sq) {
		FUNC6(cqp);
		if (poll_registers)
			/* check for cqp sq tail update */
			ret_code = FUNC1(cqp, tail, 1000);
		else
			ret_code = FUNC7(cqp,
								 I40IW_CQP_OP_SHMC_PAGES_ALLOCATED,
								 NULL);
	}

	return ret_code;
}