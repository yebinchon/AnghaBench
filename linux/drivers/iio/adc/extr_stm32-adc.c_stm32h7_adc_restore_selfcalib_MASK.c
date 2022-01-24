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
struct TYPE_2__ {int calfact_s; int calfact_d; int* lincalfact; } ;
struct stm32_adc {TYPE_1__ cal; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  STM32H7_ADC_CALFACT ; 
 int /*<<< orphan*/  STM32H7_ADC_CALFACT2 ; 
 int /*<<< orphan*/  STM32H7_ADC_CR ; 
 int STM32H7_CALFACT_D_SHIFT ; 
 int STM32H7_CALFACT_S_SHIFT ; 
 int STM32H7_LINCALFACT_NUM ; 
 int STM32H7_LINCALFACT_SHIFT ; 
 int STM32H7_LINCALRDYW6 ; 
 int /*<<< orphan*/  STM32_ADC_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct stm32_adc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_adc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct stm32_adc *adc)
{
	struct iio_dev *indio_dev = FUNC1(adc);
	int i, ret;
	u32 lincalrdyw_mask, val;

	val = (adc->cal.calfact_s << STM32H7_CALFACT_S_SHIFT) |
		(adc->cal.calfact_d << STM32H7_CALFACT_D_SHIFT);
	FUNC6(adc, STM32H7_ADC_CALFACT, val);

	lincalrdyw_mask = STM32H7_LINCALRDYW6;
	for (i = STM32H7_LINCALFACT_NUM - 1; i >= 0; i--) {
		/*
		 * Write saved calibration data to shadow registers:
		 * Write CALFACT2, and set LINCALRDYW[6..1] bit to trigger
		 * data write. Then poll to wait for complete transfer.
		 */
		val = adc->cal.lincalfact[i] << STM32H7_LINCALFACT_SHIFT;
		FUNC6(adc, STM32H7_ADC_CALFACT2, val);
		FUNC5(adc, STM32H7_ADC_CR, lincalrdyw_mask);
		ret = FUNC4(STM32H7_ADC_CR, val,
						   val & lincalrdyw_mask,
						   100, STM32_ADC_TIMEOUT_US);
		if (ret) {
			FUNC0(&indio_dev->dev, "Failed to write calfact\n");
			return ret;
		}

		/*
		 * Read back calibration data, has two effects:
		 * - It ensures bits LINCALRDYW[6..1] are kept cleared
		 *   for next time calibration needs to be restored.
		 * - BTW, bit clear triggers a read, then check data has been
		 *   correctly written.
		 */
		FUNC2(adc, STM32H7_ADC_CR, lincalrdyw_mask);
		ret = FUNC4(STM32H7_ADC_CR, val,
						   !(val & lincalrdyw_mask),
						   100, STM32_ADC_TIMEOUT_US);
		if (ret) {
			FUNC0(&indio_dev->dev, "Failed to read calfact\n");
			return ret;
		}
		val = FUNC3(adc, STM32H7_ADC_CALFACT2);
		if (val != adc->cal.lincalfact[i] << STM32H7_LINCALFACT_SHIFT) {
			FUNC0(&indio_dev->dev, "calfact not consistent\n");
			return -EIO;
		}

		lincalrdyw_mask >>= 1;
	}

	return 0;
}