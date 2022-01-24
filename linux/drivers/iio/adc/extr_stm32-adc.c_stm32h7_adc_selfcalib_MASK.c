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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ calibrated; } ;
struct stm32_adc {TYPE_1__ cal; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STM32H7_ADCAL ; 
 int STM32H7_ADCALDIF ; 
 int STM32H7_ADCALLIN ; 
 int /*<<< orphan*/  STM32H7_ADC_CALIB_TIMEOUT_US ; 
 int /*<<< orphan*/  STM32H7_ADC_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct stm32_adc *adc)
{
	struct iio_dev *indio_dev = FUNC1(adc);
	int ret;
	u32 val;

	if (adc->cal.calibrated)
		return true;

	/*
	 * Select calibration mode:
	 * - Offset calibration for single ended inputs
	 * - No linearity calibration (do it later, before reading it)
	 */
	FUNC2(adc, STM32H7_ADC_CR, STM32H7_ADCALDIF);
	FUNC2(adc, STM32H7_ADC_CR, STM32H7_ADCALLIN);

	/* Start calibration, then wait for completion */
	FUNC4(adc, STM32H7_ADC_CR, STM32H7_ADCAL);
	ret = FUNC3(STM32H7_ADC_CR, val,
					   !(val & STM32H7_ADCAL), 100,
					   STM32H7_ADC_CALIB_TIMEOUT_US);
	if (ret) {
		FUNC0(&indio_dev->dev, "calibration failed\n");
		goto out;
	}

	/*
	 * Select calibration mode, then start calibration:
	 * - Offset calibration for differential input
	 * - Linearity calibration (needs to be done only once for single/diff)
	 *   will run simultaneously with offset calibration.
	 */
	FUNC4(adc, STM32H7_ADC_CR,
			   STM32H7_ADCALDIF | STM32H7_ADCALLIN);
	FUNC4(adc, STM32H7_ADC_CR, STM32H7_ADCAL);
	ret = FUNC3(STM32H7_ADC_CR, val,
					   !(val & STM32H7_ADCAL), 100,
					   STM32H7_ADC_CALIB_TIMEOUT_US);
	if (ret) {
		FUNC0(&indio_dev->dev, "calibration failed\n");
		goto out;
	}

out:
	FUNC2(adc, STM32H7_ADC_CR,
			   STM32H7_ADCALDIF | STM32H7_ADCALLIN);

	return ret;
}