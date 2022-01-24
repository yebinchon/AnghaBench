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
struct stm32_dfsdm_adc {TYPE_1__* dev_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ DFSDM_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm32_dfsdm_adc* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct stm32_dfsdm_adc *adc = FUNC3(pdev);
	struct iio_dev *indio_dev = FUNC1(adc);

	if (adc->dev_data->type == DFSDM_AUDIO)
		FUNC2(&pdev->dev);
	FUNC0(indio_dev);
	FUNC4(indio_dev);

	return 0;
}