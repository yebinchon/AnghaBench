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
struct ingenic_adc {scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ JZ_ADC_REG_ADCLK ; 
 unsigned int JZ_ADC_REG_ADCLK_CLKDIV10US_LSB ; 
 unsigned int JZ_ADC_REG_ADCLK_CLKDIV_LSB ; 
 unsigned int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct ingenic_adc *adc)
{
	struct clk *parent_clk;
	unsigned long parent_rate, rate;
	unsigned int div_main, div_10us;

	parent_clk = FUNC2(adc->clk);
	if (!parent_clk) {
		FUNC4(dev, "ADC clock has no parent\n");
		return -ENODEV;
	}
	parent_rate = FUNC3(parent_clk);

	/*
	 * The JZ4725B ADC works at 500 kHz to 8 MHz.
	 * We pick the highest rate possible.
	 * In practice we typically get 6 MHz, half of the 12 MHz EXT clock.
	 */
	div_main = FUNC0(parent_rate, 8000000);
	div_main = FUNC1(div_main, 1u, 64u);
	rate = parent_rate / div_main;
	if (rate < 500000 || rate > 8000000) {
		FUNC4(dev, "No valid divider for ADC main clock\n");
		return -EINVAL;
	}

	/* We also need a divider that produces a 10us clock. */
	div_10us = FUNC0(rate, 100000);

	FUNC5(((div_10us - 1) << JZ_ADC_REG_ADCLK_CLKDIV10US_LSB) |
	       (div_main - 1) << JZ_ADC_REG_ADCLK_CLKDIV_LSB,
	       adc->base + JZ_ADC_REG_ADCLK);

	return 0;
}