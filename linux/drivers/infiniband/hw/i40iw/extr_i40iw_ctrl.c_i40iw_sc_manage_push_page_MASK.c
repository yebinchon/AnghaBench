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
struct i40iw_sc_cqp {scalar_t__ polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_cqp_manage_push_page_info {scalar_t__ push_idx; scalar_t__ free_page; int /*<<< orphan*/  qs_handle; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_MPP_FREE_PAGE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MPP_PPIDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 scalar_t__ I40IW_CQP_OP_MANAGE_PUSH_PAGES ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_INVALID_PUSH_PAGE_INDEX ; 
 int I40IW_ERR_RING_FULL ; 
 scalar_t__ I40IW_MAX_PUSH_PAGE_COUNT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(
				struct i40iw_sc_cqp *cqp,
				struct i40iw_cqp_manage_push_page_info *info,
				u64 scratch,
				bool post_sq)
{
	u64 *wqe;
	u64 header;

	if (info->push_idx >= I40IW_MAX_PUSH_PAGE_COUNT)
		return I40IW_ERR_INVALID_PUSH_PAGE_INDEX;

	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	FUNC5(wqe, 16, info->qs_handle);

	header = FUNC0(info->push_idx, I40IW_CQPSQ_MPP_PPIDX) |
		 FUNC0(I40IW_CQP_OP_MANAGE_PUSH_PAGES, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID) |
		 FUNC0(info->free_page, I40IW_CQPSQ_MPP_FREE_PAGE);

	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "MANAGE_PUSH_PAGES WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}