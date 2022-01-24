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
typedef  int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {int /*<<< orphan*/  idx; struct dpu_hw_blk_reg_map hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_SW_RESET ; 
 int FUNC0 (struct dpu_hw_blk_reg_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPU_REG_RESET_TIMEOUT_US ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dpu_hw_ctl *ctx)
{
	struct dpu_hw_blk_reg_map *c = &ctx->hw;
	u32 status;

	status = FUNC0(c, CTL_SW_RESET);
	status &= 0x01;
	if (!status)
		return 0;

	FUNC2("hw ctl reset is set for ctl:%d\n", ctx->idx);
	if (FUNC1(ctx, DPU_REG_RESET_TIMEOUT_US)) {
		FUNC3("hw recovery is not complete for ctl:%d\n", ctx->idx);
		return -EINVAL;
	}

	return 0;
}