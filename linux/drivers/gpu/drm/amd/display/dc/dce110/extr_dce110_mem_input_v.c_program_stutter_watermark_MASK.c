#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct dce_watermarks {int a_mark; int b_mark; } ;
struct dc_context {TYPE_2__* dc; } ;
struct TYPE_3__ {scalar_t__ disable_stutter; } ;
struct TYPE_4__ {TYPE_1__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPGV0_PIPE_STUTTER_CONTROL ; 
 int /*<<< orphan*/  DPGV0_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  STUTTER_ENABLE ; 
 int /*<<< orphan*/  STUTTER_EXIT_SELF_REFRESH_WATERMARK ; 
 int /*<<< orphan*/  STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK ; 
 int /*<<< orphan*/  STUTTER_IGNORE_FBC ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context const*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	const struct dc_context *ctx,
	const uint32_t stutter_addr,
	const uint32_t wm_addr,
	struct dce_watermarks marks)
{
	/* register value */
	uint32_t stutter_cntl = 0;
	uint32_t wm_mask_cntl = 0;

	/*Write mask to enable reading/writing of watermark set A*/

	wm_mask_cntl = FUNC0(ctx, wm_addr);
	FUNC2(wm_mask_cntl,
		1,
		DPGV0_WATERMARK_MASK_CONTROL,
		STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK);
	FUNC1(ctx, wm_addr, wm_mask_cntl);

	stutter_cntl = FUNC0(ctx, stutter_addr);

	if (ctx->dc->debug.disable_stutter) {
		FUNC2(stutter_cntl,
			0,
			DPGV0_PIPE_STUTTER_CONTROL,
			STUTTER_ENABLE);
	} else {
		FUNC2(stutter_cntl,
			1,
			DPGV0_PIPE_STUTTER_CONTROL,
			STUTTER_ENABLE);
	}

	FUNC2(stutter_cntl,
		1,
		DPGV0_PIPE_STUTTER_CONTROL,
		STUTTER_IGNORE_FBC);

	/*Write watermark set A*/
	FUNC2(stutter_cntl,
		marks.a_mark,
		DPGV0_PIPE_STUTTER_CONTROL,
		STUTTER_EXIT_SELF_REFRESH_WATERMARK);
	FUNC1(ctx, stutter_addr, stutter_cntl);

	/*Write mask to enable reading/writing of watermark set B*/
	wm_mask_cntl = FUNC0(ctx, wm_addr);
	FUNC2(wm_mask_cntl,
		2,
		DPGV0_WATERMARK_MASK_CONTROL,
		STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK);
	FUNC1(ctx, wm_addr, wm_mask_cntl);

	stutter_cntl = FUNC0(ctx, stutter_addr);
	/*Write watermark set B*/
	FUNC2(stutter_cntl,
		marks.b_mark,
		DPGV0_PIPE_STUTTER_CONTROL,
		STUTTER_EXIT_SELF_REFRESH_WATERMARK);
	FUNC1(ctx, stutter_addr, stutter_cntl);
}