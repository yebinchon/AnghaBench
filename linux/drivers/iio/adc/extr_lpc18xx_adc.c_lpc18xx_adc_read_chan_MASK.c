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
struct lpc18xx_adc {int cr_reg; int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int LPC18XX_ADC_CONV_DONE ; 
 scalar_t__ LPC18XX_ADC_CR ; 
 int LPC18XX_ADC_CR_START_NOW ; 
 scalar_t__ LPC18XX_ADC_GDR ; 
 int LPC18XX_ADC_SAMPLE_MASK ; 
 int LPC18XX_ADC_SAMPLE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct lpc18xx_adc *adc, unsigned int ch)
{
	int ret;
	u32 reg;

	reg = adc->cr_reg | FUNC0(ch) | LPC18XX_ADC_CR_START_NOW;
	FUNC3(reg, adc->base + LPC18XX_ADC_CR);

	ret = FUNC2(adc->base + LPC18XX_ADC_GDR, reg,
				 reg & LPC18XX_ADC_CONV_DONE, 3, 9);
	if (ret) {
		FUNC1(adc->dev, "adc read timed out\n");
		return ret;
	}

	return (reg >> LPC18XX_ADC_SAMPLE_SHIFT) & LPC18XX_ADC_SAMPLE_MASK;
}