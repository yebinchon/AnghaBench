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
struct platform_device_id {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  info; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; TYPE_1__ dev; } ;
struct axp_data {scalar_t__ adc_en2; int /*<<< orphan*/  maps; int /*<<< orphan*/  (* adc_rate ) (struct axp20x_adc_iio*,int) ;int /*<<< orphan*/  adc_en1_mask; int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  iio_info; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap; } ;
struct axp20x_adc_iio {int /*<<< orphan*/  regmap; struct axp_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_ADC_EN1 ; 
 int /*<<< orphan*/  AXP20X_ADC_EN2 ; 
 int /*<<< orphan*/  AXP20X_ADC_EN2_MASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct axp20x_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct axp20x_adc_iio* FUNC6 (struct iio_dev*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 struct platform_device_id* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct axp20x_adc_iio*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct axp20x_adc_iio *info;
	struct iio_dev *indio_dev;
	struct axp20x_dev *axp20x_dev;
	int ret;

	axp20x_dev = FUNC1(pdev->dev.parent);

	indio_dev = FUNC2(&pdev->dev, sizeof(*info));
	if (!indio_dev)
		return -ENOMEM;

	info = FUNC6(indio_dev);
	FUNC9(pdev, indio_dev);

	info->regmap = axp20x_dev->regmap;
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->modes = INDIO_DIRECT_MODE;

	if (!pdev->dev.of_node) {
		const struct platform_device_id *id;

		id = FUNC8(pdev);
		info->data = (struct axp_data *)id->driver_data;
	} else {
		struct device *dev = &pdev->dev;

		info->data = (struct axp_data *)FUNC7(dev);
	}

	indio_dev->name = FUNC8(pdev)->name;
	indio_dev->info = info->data->iio_info;
	indio_dev->num_channels = info->data->num_channels;
	indio_dev->channels = info->data->channels;

	/* Enable the ADCs on IP */
	FUNC11(info->regmap, AXP20X_ADC_EN1, info->data->adc_en1_mask);

	if (info->data->adc_en2)
		/* Enable GPIO0/1 and internal temperature ADCs */
		FUNC10(info->regmap, AXP20X_ADC_EN2,
				   AXP20X_ADC_EN2_MASK, AXP20X_ADC_EN2_MASK);

	/* Configure ADCs rate */
	info->data->adc_rate(info, 100);

	ret = FUNC4(indio_dev, info->data->maps);
	if (ret < 0) {
		FUNC0(&pdev->dev, "failed to register IIO maps: %d\n", ret);
		goto fail_map;
	}

	ret = FUNC3(indio_dev);
	if (ret < 0) {
		FUNC0(&pdev->dev, "could not register the device\n");
		goto fail_register;
	}

	return 0;

fail_register:
	FUNC5(indio_dev);

fail_map:
	FUNC11(info->regmap, AXP20X_ADC_EN1, 0);

	if (info->data->adc_en2)
		FUNC11(info->regmap, AXP20X_ADC_EN2, 0);

	return ret;
}