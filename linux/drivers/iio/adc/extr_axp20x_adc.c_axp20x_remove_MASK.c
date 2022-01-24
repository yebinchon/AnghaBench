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
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct axp20x_adc_iio {int /*<<< orphan*/  regmap; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ adc_en2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_ADC_EN1 ; 
 int /*<<< orphan*/  AXP20X_ADC_EN2 ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct axp20x_adc_iio* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct axp20x_adc_iio *info = FUNC2(indio_dev);

	FUNC0(indio_dev);
	FUNC1(indio_dev);

	FUNC4(info->regmap, AXP20X_ADC_EN1, 0);

	if (info->data->adc_en2)
		FUNC4(info->regmap, AXP20X_ADC_EN2, 0);

	return 0;
}