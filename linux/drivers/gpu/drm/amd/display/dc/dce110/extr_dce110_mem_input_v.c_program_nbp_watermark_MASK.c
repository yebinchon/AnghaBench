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
typedef  int /*<<< orphan*/  uint32_t ;
struct dce_watermarks {int a_mark; int b_mark; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL ; 
 int /*<<< orphan*/  DPGV0_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  NB_PSTATE_CHANGE_ENABLE ; 
 int /*<<< orphan*/  NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST ; 
 int /*<<< orphan*/  NB_PSTATE_CHANGE_URGENT_DURING_REQUEST ; 
 int /*<<< orphan*/  NB_PSTATE_CHANGE_WATERMARK ; 
 int /*<<< orphan*/  NB_PSTATE_CHANGE_WATERMARK_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context const*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	const struct dc_context *ctx,
	const uint32_t wm_mask_ctrl_addr,
	const uint32_t nbp_pstate_ctrl_addr,
	struct dce_watermarks marks)
{
	uint32_t value;

	/* Write mask to enable reading/writing of watermark set A */

	value = FUNC0(ctx, wm_mask_ctrl_addr);

	FUNC2(
		value,
		1,
		DPGV0_WATERMARK_MASK_CONTROL,
		NB_PSTATE_CHANGE_WATERMARK_MASK);
	FUNC1(ctx, wm_mask_ctrl_addr, value);

	value = FUNC0(ctx, nbp_pstate_ctrl_addr);

	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_ENABLE);
	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_URGENT_DURING_REQUEST);
	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST);
	FUNC1(ctx, nbp_pstate_ctrl_addr, value);

	/* Write watermark set A */
	value = FUNC0(ctx, nbp_pstate_ctrl_addr);
	FUNC2(
		value,
		marks.a_mark,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_WATERMARK);
	FUNC1(ctx, nbp_pstate_ctrl_addr, value);

	/* Write mask to enable reading/writing of watermark set B */
	value = FUNC0(ctx, wm_mask_ctrl_addr);
	FUNC2(
		value,
		2,
		DPGV0_WATERMARK_MASK_CONTROL,
		NB_PSTATE_CHANGE_WATERMARK_MASK);
	FUNC1(ctx, wm_mask_ctrl_addr, value);

	value = FUNC0(ctx, nbp_pstate_ctrl_addr);
	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_ENABLE);
	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_URGENT_DURING_REQUEST);
	FUNC2(
		value,
		1,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST);
	FUNC1(ctx, nbp_pstate_ctrl_addr, value);

	/* Write watermark set B */
	value = FUNC0(ctx, nbp_pstate_ctrl_addr);
	FUNC2(
		value,
		marks.b_mark,
		DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
		NB_PSTATE_CHANGE_WATERMARK);
	FUNC1(ctx, nbp_pstate_ctrl_addr, value);
}