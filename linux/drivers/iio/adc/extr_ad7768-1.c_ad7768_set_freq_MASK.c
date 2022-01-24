#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ad7768_state {int /*<<< orphan*/  mclk_freq; void* samp_freq; } ;
struct TYPE_3__ {int clk_div; int /*<<< orphan*/  dec_rate; int /*<<< orphan*/  pwrmode; int /*<<< orphan*/  mclk_div; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD7768_REG_POWER_CLOCK ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int U32_MAX ; 
 unsigned int FUNC4 (int) ; 
 TYPE_1__* ad7768_clk_config ; 
 int FUNC5 (struct ad7768_state*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ad7768_state*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct ad7768_state *st,
			   unsigned int freq)
{
	unsigned int diff_new, diff_old, pwr_mode, i, idx;
	int res, ret;

	diff_old = U32_MAX;
	idx = 0;

	res = FUNC3(st->mclk_freq, freq);

	/* Find the closest match for the desired sampling frequency */
	for (i = 0; i < FUNC2(ad7768_clk_config); i++) {
		diff_new = FUNC4(res - ad7768_clk_config[i].clk_div);
		if (diff_new < diff_old) {
			diff_old = diff_new;
			idx = i;
		}
	}

	/*
	 * Set both the mclk_div and pwrmode with a single write to the
	 * POWER_CLOCK register
	 */
	pwr_mode = FUNC0(ad7768_clk_config[idx].mclk_div) |
		   FUNC1(ad7768_clk_config[idx].pwrmode);
	ret = FUNC6(st, AD7768_REG_POWER_CLOCK, pwr_mode);
	if (ret < 0)
		return ret;

	ret =  FUNC5(st, ad7768_clk_config[idx].dec_rate);
	if (ret < 0)
		return ret;

	st->samp_freq = FUNC3(st->mclk_freq,
					  ad7768_clk_config[idx].clk_div);

	return 0;
}