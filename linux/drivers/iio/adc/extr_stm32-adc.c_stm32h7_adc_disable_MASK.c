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
struct stm32_adc {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32H7_ADC_CR ; 
 int /*<<< orphan*/  STM32H7_ADDIS ; 
 int STM32H7_ADEN ; 
 int /*<<< orphan*/  STM32_ADC_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (struct stm32_adc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_adc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stm32_adc *adc)
{
	struct iio_dev *indio_dev = FUNC1(adc);
	int ret;
	u32 val;

	/* Disable ADC and wait until it's effectively disabled */
	FUNC3(adc, STM32H7_ADC_CR, STM32H7_ADDIS);
	ret = FUNC2(STM32H7_ADC_CR, val,
					   !(val & STM32H7_ADEN), 100,
					   STM32_ADC_TIMEOUT_US);
	if (ret)
		FUNC0(&indio_dev->dev, "Failed to disable\n");
}