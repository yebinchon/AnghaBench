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
struct ad7124_state {unsigned int adc_control; int num_channels; int /*<<< orphan*/  sd; TYPE_1__* channel_config; int /*<<< orphan*/  mclk; } ;
struct TYPE_2__ {unsigned int ain; int buf_positive; int buf_negative; int /*<<< orphan*/  refsel; int /*<<< orphan*/  bipolar; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7124_ADC_CONTROL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int AD7124_ADC_CTRL_PWR_MSK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*) ; 
 int EINVAL ; 
 unsigned int FUNC8 (unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC9 (struct ad7124_state*,int) ; 
 unsigned int* ad7124_master_clk_freq_hz ; 
 int FUNC10 (struct ad7124_state*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC14(struct ad7124_state *st)
{
	unsigned int val, fclk, power_mode;
	int i, ret, tmp;

	fclk = FUNC12(st->mclk);
	if (!fclk)
		return -EINVAL;

	/* The power mode changes the master clock frequency */
	power_mode = FUNC8(ad7124_master_clk_freq_hz,
					FUNC7(ad7124_master_clk_freq_hz),
					fclk);
	if (fclk != ad7124_master_clk_freq_hz[power_mode]) {
		ret = FUNC13(st->mclk, fclk);
		if (ret)
			return ret;
	}

	/* Set the power mode */
	st->adc_control &= ~AD7124_ADC_CTRL_PWR_MSK;
	st->adc_control |= FUNC0(power_mode);
	ret = FUNC11(&st->sd, AD7124_ADC_CONTROL, 2, st->adc_control);
	if (ret < 0)
		return ret;

	for (i = 0; i < st->num_channels; i++) {
		val = st->channel_config[i].ain | FUNC2(i);
		ret = FUNC11(&st->sd, FUNC1(i), 2, val);
		if (ret < 0)
			return ret;

		ret = FUNC9(st, i);
		if (ret < 0)
			return ret;

		tmp = (st->channel_config[i].buf_positive << 1)  +
			st->channel_config[i].buf_negative;

		val = FUNC4(st->channel_config[i].bipolar) |
		      FUNC6(st->channel_config[i].refsel) |
		      FUNC5(tmp);
		ret = FUNC11(&st->sd, FUNC3(i), 2, val);
		if (ret < 0)
			return ret;
		/*
		 * 9.38 SPS is the minimum output data rate supported
		 * regardless of the selected power mode. Round it up to 10 and
		 * set all the enabled channels to this default value.
		 */
		ret = FUNC10(st, i, 10);
	}

	return ret;
}