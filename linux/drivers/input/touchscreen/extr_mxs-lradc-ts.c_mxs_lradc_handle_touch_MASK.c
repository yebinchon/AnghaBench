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
struct mxs_lradc_ts {int cur_plate; int /*<<< orphan*/  ts_pressure; void* ts_x_pos; void* ts_y_pos; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LRADC_CTRL1 ; 
 int /*<<< orphan*/  LRADC_CTRL1_TOUCH_DETECT_IRQ ; 
#define  LRADC_SAMPLE_PRESSURE 132 
#define  LRADC_SAMPLE_VALID 131 
#define  LRADC_SAMPLE_X 130 
#define  LRADC_SAMPLE_Y 129 
#define  LRADC_TOUCH 128 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL1 ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL2 ; 
 int /*<<< orphan*/  FUNC0 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxs_lradc_ts*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxs_lradc_ts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mxs_lradc_ts*) ; 
 void* FUNC7 (struct mxs_lradc_ts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct mxs_lradc_ts *ts)
{
	switch (ts->cur_plate) {
	case LRADC_TOUCH:
		if (FUNC0(ts))
			FUNC6(ts);
		FUNC8(LRADC_CTRL1_TOUCH_DETECT_IRQ,
		       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
		return;

	case LRADC_SAMPLE_Y:
		ts->ts_y_pos =
		    FUNC7(ts, TOUCHSCREEN_VCHANNEL1);
		FUNC4(ts);
		return;

	case LRADC_SAMPLE_X:
		ts->ts_x_pos =
		    FUNC7(ts, TOUCHSCREEN_VCHANNEL1);
		FUNC3(ts);
		return;

	case LRADC_SAMPLE_PRESSURE:
		ts->ts_pressure =
		    FUNC5(ts,
					       TOUCHSCREEN_VCHANNEL2,
					       TOUCHSCREEN_VCHANNEL1);
		FUNC1(ts);
		return;

	case LRADC_SAMPLE_VALID:
		FUNC2(ts, 1);
		break;
	}
}