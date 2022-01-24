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
struct sc27xx_adc_data {scalar_t__ irq; struct device* dev; struct sc27xx_adc_data* hwlock; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct sc27xx_adc_data*) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,struct iio_dev*) ; 
 struct sc27xx_adc_data* FUNC7 (int) ; 
 struct sc27xx_adc_data* FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc27xx_adc_disable ; 
 int FUNC12 (struct sc27xx_adc_data*) ; 
 int /*<<< orphan*/  sc27xx_adc_free_hwlock ; 
 int /*<<< orphan*/  sc27xx_channels ; 
 int /*<<< orphan*/  sc27xx_info ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct sc27xx_adc_data *sc27xx_data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC5(dev, sizeof(*sc27xx_data));
	if (!indio_dev)
		return -ENOMEM;

	sc27xx_data = FUNC8(indio_dev);

	sc27xx_data->regmap = FUNC2(dev->parent, NULL);
	if (!sc27xx_data->regmap) {
		FUNC1(dev, "failed to get ADC regmap\n");
		return -ENODEV;
	}

	ret = FUNC10(np, "reg", &sc27xx_data->base);
	if (ret) {
		FUNC1(dev, "failed to get ADC base address\n");
		return ret;
	}

	sc27xx_data->irq = FUNC11(pdev, 0);
	if (sc27xx_data->irq < 0)
		return sc27xx_data->irq;

	ret = FUNC9(np, 0);
	if (ret < 0) {
		FUNC1(dev, "failed to get hwspinlock id\n");
		return ret;
	}

	sc27xx_data->hwlock = FUNC7(ret);
	if (!sc27xx_data->hwlock) {
		FUNC1(dev, "failed to request hwspinlock\n");
		return -ENXIO;
	}

	ret = FUNC4(dev, sc27xx_adc_free_hwlock,
			      sc27xx_data->hwlock);
	if (ret) {
		FUNC1(dev, "failed to add hwspinlock action\n");
		return ret;
	}

	sc27xx_data->dev = dev;

	ret = FUNC12(sc27xx_data);
	if (ret) {
		FUNC1(dev, "failed to enable ADC module\n");
		return ret;
	}

	ret = FUNC4(dev, sc27xx_adc_disable, sc27xx_data);
	if (ret) {
		FUNC1(dev, "failed to add ADC disable action\n");
		return ret;
	}

	indio_dev->dev.parent = dev;
	indio_dev->name = FUNC3(dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &sc27xx_info;
	indio_dev->channels = sc27xx_channels;
	indio_dev->num_channels = FUNC0(sc27xx_channels);
	ret = FUNC6(dev, indio_dev);
	if (ret)
		FUNC1(dev, "could not register iio (ADC)");

	return ret;
}