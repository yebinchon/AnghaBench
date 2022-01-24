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
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct da9150_gpadc {int /*<<< orphan*/  complete; int /*<<< orphan*/  lock; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  da9150_gpadc_channels ; 
 int /*<<< orphan*/  da9150_gpadc_default_maps ; 
 int /*<<< orphan*/  da9150_gpadc_info ; 
 int /*<<< orphan*/  da9150_gpadc_irq ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct da9150* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct da9150_gpadc*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 struct da9150_gpadc* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9150 *da9150 = FUNC2(dev->parent);
	struct da9150_gpadc *gpadc;
	struct iio_dev *indio_dev;
	int irq, ret;

	indio_dev = FUNC4(dev, sizeof(*gpadc));
	if (!indio_dev) {
		FUNC1(&pdev->dev, "Failed to allocate IIO device\n");
		return -ENOMEM;
	}
	gpadc = FUNC9(indio_dev);

	FUNC13(pdev, indio_dev);
	gpadc->da9150 = da9150;
	gpadc->dev = dev;
	FUNC11(&gpadc->lock);
	FUNC10(&gpadc->complete);

	irq = FUNC12(pdev, "GPADC");
	if (irq < 0)
		return irq;

	ret = FUNC5(dev, irq, NULL, da9150_gpadc_irq,
					IRQF_ONESHOT, "GPADC", gpadc);
	if (ret) {
		FUNC1(dev, "Failed to request IRQ %d: %d\n", irq, ret);
		return ret;
	}

	ret = FUNC7(indio_dev, da9150_gpadc_default_maps);
	if (ret) {
		FUNC1(dev, "Failed to register IIO maps: %d\n", ret);
		return ret;
	}

	indio_dev->name = FUNC3(dev);
	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &da9150_gpadc_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = da9150_gpadc_channels;
	indio_dev->num_channels = FUNC0(da9150_gpadc_channels);

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC1(dev, "Failed to register IIO device: %d\n", ret);
		goto iio_map_unreg;
	}

	return 0;

iio_map_unreg:
	FUNC8(indio_dev);

	return ret;
}