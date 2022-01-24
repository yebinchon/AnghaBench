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
struct imx6ul_tsc {int average_select; scalar_t__ adc_regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  completion; scalar_t__ average_enable; } ;

/* Variables and functions */
 int ADC_12BIT_MODE ; 
 int ADC_AIEN ; 
 int ADC_AVGE ; 
 int ADC_AVGS_MASK ; 
 int ADC_AVGS_SHIFT ; 
 int ADC_CAL ; 
 int ADC_CALF ; 
 int ADC_CLK_DIV_8 ; 
 int ADC_CLK_DIV_MASK ; 
 int ADC_CONV_DISABLE ; 
 int ADC_CONV_MODE_MASK ; 
 int ADC_HARDWARE_TRIGGER ; 
 int ADC_INPUT_CLK_MASK ; 
 int ADC_IPG_CLK ; 
 int ADC_SAMPLE_MODE_MASK ; 
 int ADC_SHORT_SAMPLE_MODE ; 
 int /*<<< orphan*/  ADC_TIMEOUT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ REG_ADC_CFG ; 
 scalar_t__ REG_ADC_GC ; 
 scalar_t__ REG_ADC_GS ; 
 scalar_t__ REG_ADC_HC0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct imx6ul_tsc *tsc)
{
	u32 adc_hc = 0;
	u32 adc_gc;
	u32 adc_gs;
	u32 adc_cfg;
	unsigned long timeout;

	FUNC2(&tsc->completion);

	adc_cfg = FUNC1(tsc->adc_regs + REG_ADC_CFG);
	adc_cfg &= ~(ADC_CONV_MODE_MASK | ADC_INPUT_CLK_MASK);
	adc_cfg |= ADC_12BIT_MODE | ADC_IPG_CLK;
	adc_cfg &= ~(ADC_CLK_DIV_MASK | ADC_SAMPLE_MODE_MASK);
	adc_cfg |= ADC_CLK_DIV_8 | ADC_SHORT_SAMPLE_MODE;
	if (tsc->average_enable) {
		adc_cfg &= ~ADC_AVGS_MASK;
		adc_cfg |= (tsc->average_select) << ADC_AVGS_SHIFT;
	}
	adc_cfg &= ~ADC_HARDWARE_TRIGGER;
	FUNC4(adc_cfg, tsc->adc_regs + REG_ADC_CFG);

	/* enable calibration interrupt */
	adc_hc |= ADC_AIEN;
	adc_hc |= ADC_CONV_DISABLE;
	FUNC4(adc_hc, tsc->adc_regs + REG_ADC_HC0);

	/* start ADC calibration */
	adc_gc = FUNC1(tsc->adc_regs + REG_ADC_GC);
	adc_gc |= ADC_CAL;
	if (tsc->average_enable)
		adc_gc |= ADC_AVGE;
	FUNC4(adc_gc, tsc->adc_regs + REG_ADC_GC);

	timeout = FUNC3
			(&tsc->completion, ADC_TIMEOUT);
	if (timeout == 0) {
		FUNC0(tsc->dev, "Timeout for adc calibration\n");
		return -ETIMEDOUT;
	}

	adc_gs = FUNC1(tsc->adc_regs + REG_ADC_GS);
	if (adc_gs & ADC_CALF) {
		FUNC0(tsc->dev, "ADC calibration failed\n");
		return -EINVAL;
	}

	/* TSC need the ADC work in hardware trigger */
	adc_cfg = FUNC1(tsc->adc_regs + REG_ADC_CFG);
	adc_cfg |= ADC_HARDWARE_TRIGGER;
	FUNC4(adc_cfg, tsc->adc_regs + REG_ADC_CFG);

	return 0;
}