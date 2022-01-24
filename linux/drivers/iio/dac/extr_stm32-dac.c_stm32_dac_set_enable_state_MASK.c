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
typedef  scalar_t__ u32 ;
struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ hfsel; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  STM32_DAC_CR ; 
 scalar_t__ STM32_DAC_CR_EN1 ; 
 scalar_t__ STM32_DAC_CR_EN2 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 struct stm32_dac* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, int ch,
				      bool enable)
{
	struct stm32_dac *dac = FUNC2(indio_dev);
	u32 msk = FUNC0(ch) ? STM32_DAC_CR_EN1 : STM32_DAC_CR_EN2;
	u32 en = enable ? msk : 0;
	int ret;

	ret = FUNC3(dac->common->regmap, STM32_DAC_CR, msk, en);
	if (ret < 0) {
		FUNC1(&indio_dev->dev, "%s failed\n", en ?
			"Enable" : "Disable");
		return ret;
	}

	/*
	 * When HFSEL is set, it is not allowed to write the DHRx register
	 * during 8 clock cycles after the ENx bit is set. It is not allowed
	 * to make software/hardware trigger during this period either.
	 */
	if (en && dac->common->hfsel)
		FUNC4(1);

	return 0;
}