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
typedef  scalar_t__ u32 ;
struct dpu_hw_pipe {int /*<<< orphan*/  hw; } ;
typedef  enum dpu_sspp_multirect_index { ____Placeholder_dpu_sspp_multirect_index } dpu_sspp_multirect_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int DPU_SSPP_RECT_0 ; 
 int DPU_SSPP_RECT_SOLO ; 
 int /*<<< orphan*/  DPU_SSPP_SRC ; 
 scalar_t__ SSPP_SRC_CONSTANT_COLOR ; 
 scalar_t__ SSPP_SRC_CONSTANT_COLOR_REC1 ; 
 scalar_t__ FUNC1 (struct dpu_hw_pipe*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(struct dpu_hw_pipe *ctx, u32 color, enum
		dpu_sspp_multirect_index rect_index)
{
	u32 idx;

	if (FUNC1(ctx, DPU_SSPP_SRC, &idx))
		return;

	if (rect_index == DPU_SSPP_RECT_SOLO || rect_index == DPU_SSPP_RECT_0)
		FUNC0(&ctx->hw, SSPP_SRC_CONSTANT_COLOR + idx, color);
	else
		FUNC0(&ctx->hw, SSPP_SRC_CONSTANT_COLOR_REC1 + idx,
				color);
}