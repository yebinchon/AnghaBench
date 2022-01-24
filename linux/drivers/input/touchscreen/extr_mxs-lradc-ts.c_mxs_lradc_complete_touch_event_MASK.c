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
struct mxs_lradc_ts {scalar_t__ base; int /*<<< orphan*/  cur_plate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ LRADC_CTRL1 ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int LRADC_DELAY_KICK ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  LRADC_SAMPLE_VALID ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int TOUCHSCREEN_VCHANNEL1 ; 
 int TOUCHSCREEN_VCHANNEL2 ; 
 int /*<<< orphan*/  FUNC5 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct mxs_lradc_ts *ts)
{
	FUNC5(ts);
	ts->cur_plate = LRADC_SAMPLE_VALID;
	/*
	 * start a dummy conversion to burn time to settle the signals
	 * note: we are not interested in the conversion's value
	 */
	FUNC6(0, ts->base + FUNC0(TOUCHSCREEN_VCHANNEL1));
	FUNC6(FUNC1(TOUCHSCREEN_VCHANNEL1) |
	       FUNC1(TOUCHSCREEN_VCHANNEL2),
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
	FUNC6(FUNC4(1 << TOUCHSCREEN_VCHANNEL1) |
	       LRADC_DELAY_KICK | FUNC3(10),
	       ts->base + FUNC2(2));
}