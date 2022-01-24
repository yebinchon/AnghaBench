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
typedef  int uint32_t ;
struct dce_watermarks {int a_mark; int b_mark; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPGV0_PIPE_URGENCY_CONTROL ; 
 int /*<<< orphan*/  DPGV0_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  URGENCY_HIGH_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_LOW_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_WATERMARK_MASK ; 
 int FUNC0 (struct dc_context const*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context const*,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	const struct dc_context *ctx,
	const uint32_t urgency_addr,
	const uint32_t wm_addr,
	struct dce_watermarks marks_low,
	uint32_t total_dest_line_time_ns)
{
	/* register value */
	uint32_t urgency_cntl = 0;
	uint32_t wm_mask_cntl = 0;

	/*Write mask to enable reading/writing of watermark set A*/
	wm_mask_cntl = FUNC0(ctx, wm_addr);
	FUNC2(wm_mask_cntl,
			1,
			DPGV0_WATERMARK_MASK_CONTROL,
			URGENCY_WATERMARK_MASK);
	FUNC1(ctx, wm_addr, wm_mask_cntl);

	urgency_cntl = FUNC0(ctx, urgency_addr);

	FUNC2(
		urgency_cntl,
		marks_low.a_mark,
		DPGV0_PIPE_URGENCY_CONTROL,
		URGENCY_LOW_WATERMARK);

	FUNC2(
		urgency_cntl,
		total_dest_line_time_ns,
		DPGV0_PIPE_URGENCY_CONTROL,
		URGENCY_HIGH_WATERMARK);
	FUNC1(ctx, urgency_addr, urgency_cntl);

	/*Write mask to enable reading/writing of watermark set B*/
	wm_mask_cntl = FUNC0(ctx, wm_addr);
	FUNC2(wm_mask_cntl,
			2,
			DPGV0_WATERMARK_MASK_CONTROL,
			URGENCY_WATERMARK_MASK);
	FUNC1(ctx, wm_addr, wm_mask_cntl);

	urgency_cntl = FUNC0(ctx, urgency_addr);

	FUNC2(urgency_cntl,
		marks_low.b_mark,
		DPGV0_PIPE_URGENCY_CONTROL,
		URGENCY_LOW_WATERMARK);

	FUNC2(urgency_cntl,
		total_dest_line_time_ns,
		DPGV0_PIPE_URGENCY_CONTROL,
		URGENCY_HIGH_WATERMARK);

	FUNC1(ctx, urgency_addr, urgency_cntl);
}