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
struct stm32_adc {int /*<<< orphan*/  pcsel; int /*<<< orphan*/  difsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_ADC_DIFSEL ; 
 int /*<<< orphan*/  STM32H7_ADC_PCSEL ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_adc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_adc*) ; 
 int FUNC2 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_adc*) ; 
 int FUNC4 (struct stm32_adc*) ; 
 int FUNC5 (struct stm32_adc*) ; 
 int FUNC6 (struct stm32_adc*) ; 
 int FUNC7 (struct stm32_adc*) ; 

__attribute__((used)) static int FUNC8(struct stm32_adc *adc)
{
	int calib, ret;

	ret = FUNC4(adc);
	if (ret)
		return ret;

	ret = FUNC7(adc);
	if (ret < 0)
		goto pwr_dwn;
	calib = ret;

	FUNC0(adc, STM32H7_ADC_DIFSEL, adc->difsel);

	ret = FUNC2(adc);
	if (ret)
		goto pwr_dwn;

	/* Either restore or read calibration result for future reference */
	if (calib)
		ret = FUNC6(adc);
	else
		ret = FUNC5(adc);
	if (ret)
		goto disable;

	FUNC0(adc, STM32H7_ADC_PCSEL, adc->pcsel);

	return 0;

disable:
	FUNC1(adc);
pwr_dwn:
	FUNC3(adc);

	return ret;
}