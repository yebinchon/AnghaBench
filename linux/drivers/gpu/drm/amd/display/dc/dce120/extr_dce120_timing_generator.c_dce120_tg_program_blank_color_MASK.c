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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct tg_color {int /*<<< orphan*/  color_r_cr; int /*<<< orphan*/  color_g_y; int /*<<< orphan*/  color_b_cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_BLACK_COLOR ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_B_CB ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_G_Y ; 
 int /*<<< orphan*/  CRTC_BLACK_COLOR_R_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLACK_COLOR ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLANK_DATA_COLOR ; 

void FUNC4(struct timing_generator *tg,
	const struct tg_color *black_color)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t value = 0;

	FUNC0(
		CRTC0_CRTC_BLACK_COLOR,
		CRTC_BLACK_COLOR_B_CB, black_color->color_b_cb,
		CRTC_BLACK_COLOR_G_Y, black_color->color_g_y,
		CRTC_BLACK_COLOR_R_CR, black_color->color_r_cr);

	value = FUNC2(
				tg->ctx,
				mmCRTC0_CRTC_BLACK_COLOR,
				tg110->offsets.crtc);
	FUNC3(
		tg->ctx,
		mmCRTC0_CRTC_BLANK_DATA_COLOR,
		tg110->offsets.crtc,
		value);
}