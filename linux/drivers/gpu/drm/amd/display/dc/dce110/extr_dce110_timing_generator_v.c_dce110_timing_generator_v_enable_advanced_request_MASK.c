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
struct dc_crtc_timing {int v_sync_width; int v_front_porch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_START_LINE_CONTROL ; 
 int /*<<< orphan*/  CRTC_ADVANCED_START_LINE_POSITION ; 
 int /*<<< orphan*/  CRTC_LEGACY_REQUESTOR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTCV_START_LINE_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct timing_generator *tg,
	bool enable,
	const struct dc_crtc_timing *timing)
{
	uint32_t addr = mmCRTCV_START_LINE_CONTROL;
	uint32_t value = FUNC0(tg->ctx, addr);

	if (enable) {
		if ((timing->v_sync_width + timing->v_front_porch) <= 3) {
			FUNC2(
				value,
				3,
				CRTCV_START_LINE_CONTROL,
				CRTC_ADVANCED_START_LINE_POSITION);
		} else {
			FUNC2(
				value,
				4,
				CRTCV_START_LINE_CONTROL,
				CRTC_ADVANCED_START_LINE_POSITION);
		}
		FUNC2(
			value,
			0,
			CRTCV_START_LINE_CONTROL,
			CRTC_LEGACY_REQUESTOR_EN);
	} else {
		FUNC2(
			value,
			2,
			CRTCV_START_LINE_CONTROL,
			CRTC_ADVANCED_START_LINE_POSITION);
		FUNC2(
			value,
			1,
			CRTCV_START_LINE_CONTROL,
			CRTC_LEGACY_REQUESTOR_EN);
	}

	FUNC1(tg->ctx, addr, value);
}