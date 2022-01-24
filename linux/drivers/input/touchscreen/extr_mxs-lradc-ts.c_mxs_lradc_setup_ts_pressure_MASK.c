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
typedef  int u32 ;
struct mxs_lradc_ts {scalar_t__ base; scalar_t__ settling_delay; scalar_t__ over_sample_delay; scalar_t__ over_sample_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int LRADC_CH_ACCUMULATE ; 
 int FUNC2 (scalar_t__) ; 
 int LRADC_CH_VALUE_MASK ; 
 scalar_t__ LRADC_CTRL1 ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int LRADC_DELAY_KICK ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mxs_lradc_ts *ts,
					unsigned int ch1, unsigned int ch2)
{
	u32 reg;

	/*
	 * prepare for oversampling conversion
	 *
	 * from the datasheet:
	 * "The ACCUMULATE bit in the appropriate channel register
	 * HW_LRADC_CHn must be set to 1 if NUM_SAMPLES is greater then 0;
	 * otherwise, the IRQs will not fire."
	 */
	reg = LRADC_CH_ACCUMULATE |
		FUNC2(ts->over_sample_cnt - 1);
	FUNC9(reg, ts->base + FUNC1(ch1));
	FUNC9(reg, ts->base + FUNC1(ch2));

	/* from the datasheet:
	 * "Software must clear this register in preparation for a
	 * multi-cycle accumulation.
	 */
	FUNC9(LRADC_CH_VALUE_MASK,
	       ts->base + FUNC1(ch1) + STMP_OFFSET_REG_CLR);
	FUNC9(LRADC_CH_VALUE_MASK,
	       ts->base + FUNC1(ch2) + STMP_OFFSET_REG_CLR);

	/* prepare the delay/loop unit according to the oversampling count */
	FUNC9(FUNC7(1 << ch1) | FUNC7(1 << ch2) |
	       FUNC8(0) |
	       FUNC6(ts->over_sample_cnt - 1) |
	       FUNC5(ts->over_sample_delay - 1),
	       ts->base + FUNC4(3));

	FUNC9(FUNC3(ch2),
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

	/*
	 * after changing the touchscreen plates setting
	 * the signals need some initial time to settle. Start the
	 * SoC's delay unit and start the conversion later
	 * and automatically.
	 */
	FUNC9(FUNC7(0) | FUNC8(FUNC0(3)) |
	       LRADC_DELAY_KICK | FUNC5(ts->settling_delay),
	       ts->base + FUNC4(2));
}