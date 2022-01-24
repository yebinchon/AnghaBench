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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u16 ;
struct i40iw_cq_uk {int /*<<< orphan*/  cqe_alloc_reg; int /*<<< orphan*/  cq_id; int /*<<< orphan*/  shadow_area; } ;
typedef  enum i40iw_completion_notify { ____Placeholder_i40iw_completion_notify } i40iw_completion_notify ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQ_DBSA_ARM_NEXT ; 
 int /*<<< orphan*/  I40IW_CQ_DBSA_ARM_NEXT_SE ; 
 int /*<<< orphan*/  I40IW_CQ_DBSA_ARM_SEQ_NUM ; 
 int /*<<< orphan*/  I40IW_CQ_DBSA_SW_CQ_SELECT ; 
 int IW_CQ_COMPL_EVENT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i40iw_cq_uk *cq,
					  enum i40iw_completion_notify cq_notify)
{
	u64 temp_val;
	u16 sw_cq_sel;
	u8 arm_next_se = 0;
	u8 arm_next = 0;
	u8 arm_seq_num;

	FUNC2(cq->shadow_area, 32, &temp_val);
	arm_seq_num = (u8)FUNC1(temp_val, I40IW_CQ_DBSA_ARM_SEQ_NUM);
	arm_seq_num++;

	sw_cq_sel = (u16)FUNC1(temp_val, I40IW_CQ_DBSA_SW_CQ_SELECT);
	arm_next_se = (u8)FUNC1(temp_val, I40IW_CQ_DBSA_ARM_NEXT_SE);
	arm_next_se |= 1;
	if (cq_notify == IW_CQ_COMPL_EVENT)
		arm_next = 1;
	temp_val = FUNC0(arm_seq_num, I40IW_CQ_DBSA_ARM_SEQ_NUM) |
	    FUNC0(sw_cq_sel, I40IW_CQ_DBSA_SW_CQ_SELECT) |
	    FUNC0(arm_next_se, I40IW_CQ_DBSA_ARM_NEXT_SE) |
	    FUNC0(arm_next, I40IW_CQ_DBSA_ARM_NEXT);

	FUNC3(cq->shadow_area, 32, temp_val);

	FUNC4(); /* make sure WQE is populated before valid bit is set */

	FUNC5(cq->cq_id, cq->cqe_alloc_reg);
}