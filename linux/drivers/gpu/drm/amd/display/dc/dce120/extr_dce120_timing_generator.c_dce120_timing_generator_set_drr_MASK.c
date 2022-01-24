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
struct timing_generator {int dummy; } ;
struct drr_params {scalar_t__ vertical_total_max; scalar_t__ vertical_total_min; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_STATIC_SCREEN_CONTROL ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_MAX ; 
 int /*<<< orphan*/  CRTC0_CRTC_V_TOTAL_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CRTC_STATIC_SCREEN_EVENT_MASK ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MAX ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MIN ; 
 struct dce110_timing_generator* FUNC2 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(
	struct timing_generator *tg,
	const struct drr_params *params)
{

	struct dce110_timing_generator *tg110 = FUNC2(tg);

	if (params != NULL &&
		params->vertical_total_max > 0 &&
		params->vertical_total_min > 0) {

		FUNC1(
				CRTC0_CRTC_V_TOTAL_MIN,
				CRTC_V_TOTAL_MIN, params->vertical_total_min - 1);
		FUNC1(
				CRTC0_CRTC_V_TOTAL_MAX,
				CRTC_V_TOTAL_MAX, params->vertical_total_max - 1);
		FUNC0(CRTC0_CRTC_V_TOTAL_CONTROL, 6,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL), 1,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL), 1,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK), 0);
		FUNC1(
				CRTC0_CRTC_STATIC_SCREEN_CONTROL,
				CRTC_STATIC_SCREEN_EVENT_MASK,
				0x180);

	} else {
		FUNC0(CRTC0_CRTC_V_TOTAL_CONTROL, 5,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC), 0,
				FUNC3(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK), 0);
		FUNC1(
				CRTC0_CRTC_V_TOTAL_MIN,
				CRTC_V_TOTAL_MIN, 0);
		FUNC1(
				CRTC0_CRTC_V_TOTAL_MAX,
				CRTC_V_TOTAL_MAX, 0);
		FUNC1(
				CRTC0_CRTC_STATIC_SCREEN_CONTROL,
				CRTC_STATIC_SCREEN_EVENT_MASK,
				0);
	}
}