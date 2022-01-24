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
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {int /*<<< orphan*/  idx; struct dpu_hw_blk_reg_map hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_SW_RESET ; 
 int /*<<< orphan*/  DPU_REG_RESET_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC0 (struct dpu_hw_blk_reg_map*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct dpu_hw_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dpu_hw_ctl *ctx)
{
	struct dpu_hw_blk_reg_map *c = &ctx->hw;

	FUNC2("issuing hw ctl reset for ctl:%d\n", ctx->idx);
	FUNC0(c, CTL_SW_RESET, 0x1);
	if (FUNC1(ctx, DPU_REG_RESET_TIMEOUT_US))
		return -EINVAL;

	return 0;
}