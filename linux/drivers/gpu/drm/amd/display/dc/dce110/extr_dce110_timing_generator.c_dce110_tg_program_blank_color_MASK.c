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
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct tg_color {int /*<<< orphan*/  color_r_cr; int /*<<< orphan*/  color_g_y; int /*<<< orphan*/  color_b_cb; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_BLACK_COLOR ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_B_CB ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_G_Y ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_R_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_BLACK_COLOR ; 
 int /*<<< orphan*/  mmCRTC_BLANK_DATA_COLOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct timing_generator *tg,
		const struct tg_color *black_color)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t addr = FUNC0(mmCRTC_BLACK_COLOR);
	uint32_t value = FUNC2(tg->ctx, addr);

	FUNC4(
		value,
		black_color->color_b_cb,
		CRTC_BLACK_COLOR,
		CRTC_BLACK_COLOR_B_CB);
	FUNC4(
		value,
		black_color->color_g_y,
		CRTC_BLACK_COLOR,
		CRTC_BLACK_COLOR_G_Y);
	FUNC4(
		value,
		black_color->color_r_cr,
		CRTC_BLACK_COLOR,
		CRTC_BLACK_COLOR_R_CR);

	FUNC3(tg->ctx, addr, value);

	addr = FUNC0(mmCRTC_BLANK_DATA_COLOR);
	FUNC3(tg->ctx, addr, value);
}