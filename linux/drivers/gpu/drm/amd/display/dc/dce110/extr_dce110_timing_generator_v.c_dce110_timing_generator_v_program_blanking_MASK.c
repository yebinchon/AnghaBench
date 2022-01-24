#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct TYPE_2__ {int INTERLACE; scalar_t__ VSYNC_POSITIVE_POLARITY; scalar_t__ HSYNC_POSITIVE_POLARITY; } ;
struct dc_crtc_timing {int v_border_bottom; int v_front_porch; int v_addressable; int h_border_right; int h_front_porch; int h_addressable; int h_total; int v_total; int h_border_left; int v_border_top; int h_sync_width; int v_sync_width; TYPE_1__ flags; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_H_BLANK_START_END ; 
 int /*<<< orphan*/  CRTCV_H_SYNC_A ; 
 int /*<<< orphan*/  CRTCV_H_SYNC_A_CNTL ; 
 int /*<<< orphan*/  CRTCV_H_TOTAL ; 
 int /*<<< orphan*/  CRTCV_INTERLACE_CONTROL ; 
 int /*<<< orphan*/  CRTCV_V_BLANK_START_END ; 
 int /*<<< orphan*/  CRTCV_V_SYNC_A ; 
 int /*<<< orphan*/  CRTCV_V_SYNC_A_CNTL ; 
 int /*<<< orphan*/  CRTCV_V_TOTAL ; 
 int /*<<< orphan*/  CRTC_H_BLANK_END ; 
 int /*<<< orphan*/  CRTC_H_BLANK_START ; 
 int /*<<< orphan*/  CRTC_H_SYNC_A_END ; 
 int /*<<< orphan*/  CRTC_H_SYNC_A_POL ; 
 int /*<<< orphan*/  CRTC_H_TOTAL ; 
 int /*<<< orphan*/  CRTC_INTERLACE_ENABLE ; 
 int /*<<< orphan*/  CRTC_V_BLANK_END ; 
 int /*<<< orphan*/  CRTC_V_BLANK_START ; 
 int /*<<< orphan*/  CRTC_V_SYNC_A_END ; 
 int /*<<< orphan*/  CRTC_V_SYNC_A_POL ; 
 int /*<<< orphan*/  CRTC_V_TOTAL ; 
 int FUNC0 (struct dc_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context*,int,int) ; 
 int mmCRTCV_H_BLANK_START_END ; 
 int mmCRTCV_H_SYNC_A ; 
 int mmCRTCV_H_SYNC_A_CNTL ; 
 int mmCRTCV_H_TOTAL ; 
 int mmCRTCV_INTERLACE_CONTROL ; 
 int mmCRTCV_V_BLANK_START_END ; 
 int mmCRTCV_V_SYNC_A ; 
 int mmCRTCV_V_SYNC_A_CNTL ; 
 int mmCRTCV_V_TOTAL ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct timing_generator *tg,
	const struct dc_crtc_timing *timing)
{
	uint32_t vsync_offset = timing->v_border_bottom +
			timing->v_front_porch;
	uint32_t v_sync_start = timing->v_addressable + vsync_offset;

	uint32_t hsync_offset = timing->h_border_right +
			timing->h_front_porch;
	uint32_t h_sync_start = timing->h_addressable + hsync_offset;

	struct dc_context *ctx = tg->ctx;
	uint32_t value = 0;
	uint32_t addr = 0;
	uint32_t tmp = 0;

	addr = mmCRTCV_H_TOTAL;
	value = FUNC0(ctx, addr);
	FUNC2(
		value,
		timing->h_total - 1,
		CRTCV_H_TOTAL,
		CRTC_H_TOTAL);
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_V_TOTAL;
	value = FUNC0(ctx, addr);
	FUNC2(
		value,
		timing->v_total - 1,
		CRTCV_V_TOTAL,
		CRTC_V_TOTAL);
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_H_BLANK_START_END;
	value = FUNC0(ctx, addr);

	tmp = timing->h_total -
		(h_sync_start + timing->h_border_left);

	FUNC2(
		value,
		tmp,
		CRTCV_H_BLANK_START_END,
		CRTC_H_BLANK_END);

	tmp = tmp + timing->h_addressable +
		timing->h_border_left + timing->h_border_right;

	FUNC2(
		value,
		tmp,
		CRTCV_H_BLANK_START_END,
		CRTC_H_BLANK_START);

	FUNC1(ctx, addr, value);

	addr = mmCRTCV_V_BLANK_START_END;
	value = FUNC0(ctx, addr);

	tmp = timing->v_total - (v_sync_start + timing->v_border_top);

	FUNC2(
		value,
		tmp,
		CRTCV_V_BLANK_START_END,
		CRTC_V_BLANK_END);

	tmp = tmp + timing->v_addressable + timing->v_border_top +
		timing->v_border_bottom;

	FUNC2(
		value,
		tmp,
		CRTCV_V_BLANK_START_END,
		CRTC_V_BLANK_START);

	FUNC1(ctx, addr, value);

	addr = mmCRTCV_H_SYNC_A;
	value = 0;
	FUNC2(
		value,
		timing->h_sync_width,
		CRTCV_H_SYNC_A,
		CRTC_H_SYNC_A_END);
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_H_SYNC_A_CNTL;
	value = FUNC0(ctx, addr);
	if (timing->flags.HSYNC_POSITIVE_POLARITY) {
		FUNC2(
			value,
			0,
			CRTCV_H_SYNC_A_CNTL,
			CRTC_H_SYNC_A_POL);
	} else {
		FUNC2(
			value,
			1,
			CRTCV_H_SYNC_A_CNTL,
			CRTC_H_SYNC_A_POL);
	}
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_V_SYNC_A;
	value = 0;
	FUNC2(
		value,
		timing->v_sync_width,
		CRTCV_V_SYNC_A,
		CRTC_V_SYNC_A_END);
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_V_SYNC_A_CNTL;
	value = FUNC0(ctx, addr);
	if (timing->flags.VSYNC_POSITIVE_POLARITY) {
		FUNC2(
			value,
			0,
			CRTCV_V_SYNC_A_CNTL,
			CRTC_V_SYNC_A_POL);
	} else {
		FUNC2(
			value,
			1,
			CRTCV_V_SYNC_A_CNTL,
			CRTC_V_SYNC_A_POL);
	}
	FUNC1(ctx, addr, value);

	addr = mmCRTCV_INTERLACE_CONTROL;
	value = FUNC0(ctx, addr);
	FUNC2(
		value,
		timing->flags.INTERLACE,
		CRTCV_INTERLACE_CONTROL,
		CRTC_INTERLACE_ENABLE);
	FUNC1(ctx, addr, value);
}