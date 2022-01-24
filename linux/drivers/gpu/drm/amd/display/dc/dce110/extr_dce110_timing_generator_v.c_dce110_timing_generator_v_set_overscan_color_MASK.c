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
struct timing_generator {struct dc_context* ctx; } ;
struct tg_color {int /*<<< orphan*/  color_r_cr; int /*<<< orphan*/  color_g_y; int /*<<< orphan*/  color_b_cb; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_OVERSCAN_COLOR ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_BLUE ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_GREEN ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_RED ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTCV_OVERSCAN_COLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct timing_generator *tg,
	const struct tg_color *overscan_color)
{
	struct dc_context *ctx = tg->ctx;
	uint32_t value = 0;
	uint32_t addr;

	FUNC1(
		value,
		overscan_color->color_b_cb,
		CRTCV_OVERSCAN_COLOR,
		CRTC_OVERSCAN_COLOR_BLUE);

	FUNC1(
		value,
		overscan_color->color_g_y,
		CRTCV_OVERSCAN_COLOR,
		CRTC_OVERSCAN_COLOR_GREEN);

	FUNC1(
		value,
		overscan_color->color_r_cr,
		CRTCV_OVERSCAN_COLOR,
		CRTC_OVERSCAN_COLOR_RED);

	addr = mmCRTCV_OVERSCAN_COLOR;
	FUNC0(ctx, addr, value);
}