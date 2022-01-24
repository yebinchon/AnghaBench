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
typedef  int u64 ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int /*<<< orphan*/  polarity; } ;
struct i40iw_dealloc_stag_info {int /*<<< orphan*/  mr; int /*<<< orphan*/  stag_idx; int /*<<< orphan*/  pd_id; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_IDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_MR ; 
 int /*<<< orphan*/  I40IW_CQPSQ_STAG_PDID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_DEALLOC_STAG ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
					struct i40iw_sc_dev *dev,
					struct i40iw_dealloc_stag_info *info,
					u64 scratch,
					bool post_sq)
{
	u64 header;
	u64 *wqe;
	struct i40iw_sc_cqp *cqp;

	cqp = dev->cqp;
	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC5(wqe,
		      8,
		      FUNC0(info->pd_id, I40IW_CQPSQ_STAG_PDID));
	FUNC5(wqe,
		      16,
		      FUNC0(info->stag_idx, I40IW_CQPSQ_STAG_IDX));

	header = FUNC0(I40IW_CQP_OP_DEALLOC_STAG, I40IW_CQPSQ_OPCODE) |
		 FUNC0(info->mr, I40IW_CQPSQ_STAG_MR) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC2(wqe, header);

	FUNC1(dev, I40IW_DEBUG_WQE, "DEALLOC_STAG WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}