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
struct dce110_timing_generator {int dummy; } ;
struct dc_crtc_timing {int v_sync_width; int v_front_porch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_ADVANCED_START_LINE_POSITION ; 
 int /*<<< orphan*/  CRTC_INTERLACE_START_LINE_EARLY ; 
 int /*<<< orphan*/  CRTC_LEGACY_REQUESTOR_EN ; 
 int /*<<< orphan*/  CRTC_PREFETCH_EN ; 
 int /*<<< orphan*/  CRTC_PROGRESSIVE_START_LINE_EARLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_START_LINE_CONTROL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_START_LINE_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	struct timing_generator *tg,
	bool enable,
	const struct dc_crtc_timing *timing)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t addr = FUNC0(mmCRTC_START_LINE_CONTROL);
	uint32_t value = FUNC2(tg->ctx, addr);

	if (enable) {
		FUNC4(
			value,
			0,
			CRTC_START_LINE_CONTROL,
			CRTC_LEGACY_REQUESTOR_EN);
	} else {
		FUNC4(
			value,
			1,
			CRTC_START_LINE_CONTROL,
			CRTC_LEGACY_REQUESTOR_EN);
	}

	if ((timing->v_sync_width + timing->v_front_porch) <= 3) {
		FUNC4(
			value,
			3,
			CRTC_START_LINE_CONTROL,
			CRTC_ADVANCED_START_LINE_POSITION);
		FUNC4(
			value,
			0,
			CRTC_START_LINE_CONTROL,
			CRTC_PREFETCH_EN);
	} else {
		FUNC4(
			value,
			4,
			CRTC_START_LINE_CONTROL,
			CRTC_ADVANCED_START_LINE_POSITION);
		FUNC4(
			value,
			1,
			CRTC_START_LINE_CONTROL,
			CRTC_PREFETCH_EN);
	}

	FUNC4(
		value,
		1,
		CRTC_START_LINE_CONTROL,
		CRTC_PROGRESSIVE_START_LINE_EARLY);

	FUNC4(
		value,
		1,
		CRTC_START_LINE_CONTROL,
		CRTC_INTERLACE_START_LINE_EARLY);

	FUNC3(tg->ctx, addr, value);
}