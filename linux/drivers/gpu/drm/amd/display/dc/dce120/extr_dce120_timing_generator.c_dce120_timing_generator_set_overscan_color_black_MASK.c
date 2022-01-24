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
 int /*<<< orphan*/  CRTC0_CRTC_OVERSCAN_COLOR ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_BLUE ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_GREEN ; 
 int /*<<< orphan*/  CRTC_OVERSCAN_COLOR_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLACK_COLOR ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLANK_DATA_COLOR ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_OVERSCAN_COLOR ; 

void FUNC4(
	struct timing_generator *tg,
	const struct tg_color *color)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t value = 0;
	FUNC0(
		CRTC0_CRTC_OVERSCAN_COLOR,
		CRTC_OVERSCAN_COLOR_BLUE, color->color_b_cb,
		CRTC_OVERSCAN_COLOR_GREEN, color->color_g_y,
		CRTC_OVERSCAN_COLOR_RED, color->color_r_cr);

	value = FUNC2(
			tg->ctx,
			mmCRTC0_CRTC_OVERSCAN_COLOR,
			tg110->offsets.crtc);

	FUNC3(
			tg->ctx,
			mmCRTC0_CRTC_BLACK_COLOR,
			tg110->offsets.crtc,
			value);

	/* This is desirable to have a constant DAC output voltage during the
	 * blank time that is higher than the 0 volt reference level that the
	 * DAC outputs when the NBLANK signal
	 * is asserted low, such as for output to an analog TV. */
	FUNC3(
		tg->ctx,
		mmCRTC0_CRTC_BLANK_DATA_COLOR,
		tg110->offsets.crtc,
		value);

	/* TO DO we have to program EXT registers and we need to know LB DATA
	 * format because it is used when more 10 , i.e. 12 bits per color
	 *
	 * m_mmDxCRTC_OVERSCAN_COLOR_EXT
	 * m_mmDxCRTC_BLACK_COLOR_EXT
	 * m_mmDxCRTC_BLANK_DATA_COLOR_EXT
	 */
}