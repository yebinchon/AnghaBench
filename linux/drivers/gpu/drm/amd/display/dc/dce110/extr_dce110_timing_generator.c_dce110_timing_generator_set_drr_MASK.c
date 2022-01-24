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
struct drr_params {scalar_t__ vertical_total_max; scalar_t__ vertical_total_min; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_FORCE_LOCK_ON_EVENT ; 
 int /*<<< orphan*/  CRTC_FORCE_LOCK_TO_MASTER_VSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_SET_V_TOTAL_MIN_MASK ; 
 int /*<<< orphan*/  CRTC_SET_V_TOTAL_MIN_MASK_EN ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_CONTROL ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MAX ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MAX_SEL ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MIN ; 
 int /*<<< orphan*/  CRTC_V_TOTAL_MIN_SEL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_V_TOTAL_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_V_TOTAL_MAX ; 
 int /*<<< orphan*/  mmCRTC_V_TOTAL_MIN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(
	struct timing_generator *tg,
	const struct drr_params *params)
{
	/* register values */
	uint32_t v_total_min = 0;
	uint32_t v_total_max = 0;
	uint32_t v_total_cntl = 0;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	uint32_t addr = 0;

	addr = FUNC0(mmCRTC_V_TOTAL_MIN);
	v_total_min = FUNC2(tg->ctx, addr);

	addr = FUNC0(mmCRTC_V_TOTAL_MAX);
	v_total_max = FUNC2(tg->ctx, addr);

	addr = FUNC0(mmCRTC_V_TOTAL_CONTROL);
	v_total_cntl = FUNC2(tg->ctx, addr);

	if (params != NULL &&
		params->vertical_total_max > 0 &&
		params->vertical_total_min > 0) {

		FUNC4(v_total_max,
				params->vertical_total_max - 1,
				CRTC_V_TOTAL_MAX,
				CRTC_V_TOTAL_MAX);

		FUNC4(v_total_min,
				params->vertical_total_min - 1,
				CRTC_V_TOTAL_MIN,
				CRTC_V_TOTAL_MIN);

		FUNC4(v_total_cntl,
				1,
				CRTC_V_TOTAL_CONTROL,
				CRTC_V_TOTAL_MIN_SEL);

		FUNC4(v_total_cntl,
				1,
				CRTC_V_TOTAL_CONTROL,
				CRTC_V_TOTAL_MAX_SEL);

		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_FORCE_LOCK_ON_EVENT);
		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_FORCE_LOCK_TO_MASTER_VSYNC);

		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_SET_V_TOTAL_MIN_MASK_EN);

		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_SET_V_TOTAL_MIN_MASK);
	} else {
		FUNC4(v_total_cntl,
			0,
			CRTC_V_TOTAL_CONTROL,
			CRTC_SET_V_TOTAL_MIN_MASK);
		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_V_TOTAL_MIN_SEL);
		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_V_TOTAL_MAX_SEL);
		FUNC4(v_total_min,
				0,
				CRTC_V_TOTAL_MIN,
				CRTC_V_TOTAL_MIN);
		FUNC4(v_total_max,
				0,
				CRTC_V_TOTAL_MAX,
				CRTC_V_TOTAL_MAX);
		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_FORCE_LOCK_ON_EVENT);
		FUNC4(v_total_cntl,
				0,
				CRTC_V_TOTAL_CONTROL,
				CRTC_FORCE_LOCK_TO_MASTER_VSYNC);
	}

	addr = FUNC0(mmCRTC_V_TOTAL_MIN);
	FUNC3(tg->ctx, addr, v_total_min);

	addr = FUNC0(mmCRTC_V_TOTAL_MAX);
	FUNC3(tg->ctx, addr, v_total_max);

	addr = FUNC0(mmCRTC_V_TOTAL_CONTROL);
	FUNC3(tg->ctx, addr, v_total_cntl);
}