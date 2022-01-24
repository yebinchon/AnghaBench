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
typedef  scalar_t__ u32 ;
struct dpu_hw_pipe {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  DPU_SSPP_CSC_10BIT ; 
 scalar_t__ SSPP_VIG_CSC_10_OP_MODE ; 
 scalar_t__ FUNC2 (struct dpu_hw_pipe*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct dpu_hw_pipe *ctx,
		u32 mask, u8 en)
{
	u32 idx;
	u32 opmode;

	if (FUNC2(ctx, DPU_SSPP_CSC_10BIT, &idx))
		return;

	opmode = FUNC0(&ctx->hw, SSPP_VIG_CSC_10_OP_MODE + idx);
	if (en)
		opmode |= mask;
	else
		opmode &= ~mask;

	FUNC1(&ctx->hw, SSPP_VIG_CSC_10_OP_MODE + idx, opmode);
}