#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct axp288_adc_info {scalar_t__ irq; int /*<<< orphan*/  regmap; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  axp288_adc_channels ; 
 int /*<<< orphan*/  axp288_adc_default_maps ; 
 int /*<<< orphan*/  axp288_adc_iio_info ; 
 int FUNC1 (struct axp288_adc_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct axp20x_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 struct axp288_adc_info* FUNC8 (struct iio_dev*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ret;
	struct axp288_adc_info *info;
	struct iio_dev *indio_dev;
	struct axp20x_dev *axp20x = FUNC3(pdev->dev.parent);

	indio_dev = FUNC4(&pdev->dev, sizeof(*info));
	if (!indio_dev)
		return -ENOMEM;

	info = FUNC8(indio_dev);
	info->irq = FUNC9(pdev, 0);
	if (info->irq < 0)
		return info->irq;
	FUNC10(pdev, indio_dev);
	info->regmap = axp20x->regmap;
	/*
	 * Set ADC to enabled state at all time, including system suspend.
	 * otherwise internal fuel gauge functionality may be affected.
	 */
	ret = FUNC1(info);
	if (ret) {
		FUNC2(&pdev->dev, "unable to enable ADC device\n");
		return ret;
	}

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->name = pdev->name;
	indio_dev->channels = axp288_adc_channels;
	indio_dev->num_channels = FUNC0(axp288_adc_channels);
	indio_dev->info = &axp288_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	ret = FUNC6(indio_dev, axp288_adc_default_maps);
	if (ret < 0)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "unable to register iio device\n");
		goto err_array_unregister;
	}
	return 0;

err_array_unregister:
	FUNC7(indio_dev);

	return ret;
}