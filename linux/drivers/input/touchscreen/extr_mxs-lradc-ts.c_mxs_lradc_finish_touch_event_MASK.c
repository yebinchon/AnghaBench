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
struct mxs_lradc_ts {int ts_valid; scalar_t__ base; int /*<<< orphan*/  cur_plate; int /*<<< orphan*/  ts_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ LRADC_CTRL1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int LRADC_CTRL1_TOUCH_DETECT_IRQ ; 
 int LRADC_CTRL1_TOUCH_DETECT_IRQ_EN ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  LRADC_TOUCH ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC6 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC7 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct mxs_lradc_ts *ts, bool valid)
{
	/* if it is still touched, report the sample */
	if (valid && FUNC5(ts)) {
		ts->ts_valid = true;
		FUNC7(ts);
	}

	/* if it is even still touched, continue with the next measurement */
	if (FUNC5(ts)) {
		FUNC6(ts);
		return;
	}

	if (ts->ts_valid) {
		/* signal the release */
		ts->ts_valid = false;
		FUNC3(ts->ts_input, BTN_TOUCH, 0);
		FUNC4(ts->ts_input);
	}

	/* if it is released, wait for the next touch via IRQ */
	ts->cur_plate = LRADC_TOUCH;
	FUNC8(0, ts->base + FUNC2(2));
	FUNC8(0, ts->base + FUNC2(3));
	FUNC8(LRADC_CTRL1_TOUCH_DETECT_IRQ |
	       FUNC1(TOUCHSCREEN_VCHANNEL1) |
	       FUNC0(TOUCHSCREEN_VCHANNEL1),
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
	FUNC8(LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);
}