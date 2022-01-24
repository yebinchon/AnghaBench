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
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;
typedef  enum trigger_source_select { ____Placeholder_trigger_source_select } trigger_source_select ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_CLEAR ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_MODE ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_TRIG_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_TRIGB_CLEAR ; 
 int /*<<< orphan*/  CRTC_TRIGB_CNTL ; 
 int /*<<< orphan*/  CRTC_TRIGB_DELAY ; 
 int /*<<< orphan*/  CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  CRTC_TRIGB_FREQUENCY_SELECT ; 
 int /*<<< orphan*/  CRTC_TRIGB_POLARITY_SELECT ; 
 int /*<<< orphan*/  CRTC_TRIGB_RISING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  CRTC_TRIGB_SOURCE_SELECT ; 
 int /*<<< orphan*/  CRTC_V_SYNC_A_CNTL ; 
 int /*<<< orphan*/  CRTC_V_SYNC_A_POL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ; 
 int TRIGGER_SOURCE_SELECT_GSL_GROUP0 ; 
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  mmCRTC_TRIGB_CNTL ; 
 int /*<<< orphan*/  mmCRTC_V_SYNC_A_CNTL ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(
	struct timing_generator *tg,
	int source_tg_inst)
{
	uint32_t value;
	uint32_t rising_edge = 0;
	uint32_t falling_edge = 0;
	enum trigger_source_select trig_src_select = TRIGGER_SOURCE_SELECT_LOGIC_ZERO;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	/* Setup trigger edge */
	{
		uint32_t pol_value = FUNC2(tg->ctx,
				FUNC0(mmCRTC_V_SYNC_A_CNTL));

		/* Register spec has reversed definition:
		 *	0 for positive, 1 for negative */
		if (FUNC4(pol_value,
				CRTC_V_SYNC_A_CNTL,
				CRTC_V_SYNC_A_POL) == 0) {
			rising_edge = 1;
		} else {
			falling_edge = 1;
		}
	}

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_TRIGB_CNTL));

	trig_src_select = TRIGGER_SOURCE_SELECT_GSL_GROUP0;

	FUNC5(value,
			trig_src_select,
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_SOURCE_SELECT);

	FUNC5(value,
			TRIGGER_POLARITY_SELECT_LOGIC_ZERO,
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_POLARITY_SELECT);

	FUNC5(value,
			rising_edge,
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_RISING_EDGE_DETECT_CNTL);

	FUNC5(value,
			falling_edge,
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL);

	FUNC5(value,
			0, /* send every signal */
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_FREQUENCY_SELECT);

	FUNC5(value,
			0, /* no delay */
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_DELAY);

	FUNC5(value,
			1, /* clear trigger status */
			CRTC_TRIGB_CNTL,
			CRTC_TRIGB_CLEAR);

	FUNC3(tg->ctx, FUNC0(mmCRTC_TRIGB_CNTL), value);

	/**************************************************************/

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_FORCE_COUNT_NOW_CNTL));

	FUNC5(value,
			2, /* force H count to H_TOTAL and V count to V_TOTAL */
			CRTC_FORCE_COUNT_NOW_CNTL,
			CRTC_FORCE_COUNT_NOW_MODE);

	FUNC5(value,
			1, /* TriggerB - we never use TriggerA */
			CRTC_FORCE_COUNT_NOW_CNTL,
			CRTC_FORCE_COUNT_NOW_TRIG_SEL);

	FUNC5(value,
			1, /* clear trigger status */
			CRTC_FORCE_COUNT_NOW_CNTL,
			CRTC_FORCE_COUNT_NOW_CLEAR);

	FUNC3(tg->ctx, FUNC0(mmCRTC_FORCE_COUNT_NOW_CNTL), value);
}