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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct iadc_chip {int poll_eoc; struct device* dev; int /*<<< orphan*/ * rsense; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  regmap; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 size_t IADC_EXT_RSENSE ; 
 size_t IADC_INT_RSENSE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,struct iio_dev*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct iadc_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  iadc_channels ; 
 int /*<<< orphan*/  iadc_info ; 
 int /*<<< orphan*/  iadc_isr ; 
 int FUNC9 (struct iadc_chip*) ; 
 int FUNC10 (struct iadc_chip*,struct device_node*) ; 
 int FUNC11 (struct iadc_chip*) ; 
 int FUNC12 (struct iadc_chip*) ; 
 struct iadc_chip* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct iio_dev *indio_dev;
	struct iadc_chip *iadc;
	int ret, irq_eoc;
	u32 res;

	indio_dev = FUNC5(dev, sizeof(*iadc));
	if (!indio_dev)
		return -ENOMEM;

	iadc = FUNC13(indio_dev);
	iadc->dev = dev;

	iadc->regmap = FUNC3(dev->parent, NULL);
	if (!iadc->regmap)
		return -ENODEV;

	FUNC14(&iadc->complete);
	FUNC15(&iadc->lock);

	ret = FUNC16(node, "reg", &res);
	if (ret < 0)
		return -ENODEV;

	iadc->base = res;

	ret = FUNC12(iadc);
	if (ret < 0)
		return -ENODEV;

	ret = FUNC10(iadc, node);
	if (ret < 0)
		return -ENODEV;

	FUNC1(iadc->dev, "sense resistors %d and %d micro Ohm\n",
		iadc->rsense[IADC_INT_RSENSE],
		iadc->rsense[IADC_EXT_RSENSE]);

	irq_eoc = FUNC17(pdev, 0);
	if (irq_eoc == -EPROBE_DEFER)
		return irq_eoc;

	if (irq_eoc < 0)
		iadc->poll_eoc = true;

	ret = FUNC9(iadc);
	if (ret < 0) {
		FUNC2(dev, "reset failed\n");
		return ret;
	}

	if (!iadc->poll_eoc) {
		ret = FUNC7(dev, irq_eoc, iadc_isr, 0,
					"spmi-iadc", iadc);
		if (!ret)
			FUNC8(irq_eoc);
		else
			return ret;
	} else {
		FUNC4(iadc->dev, 1);
	}

	ret = FUNC11(iadc);
	if (ret < 0) {
		FUNC2(dev, "failed offset calibration\n");
		return ret;
	}

	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = node;
	indio_dev->name = pdev->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &iadc_info;
	indio_dev->channels = iadc_channels;
	indio_dev->num_channels = FUNC0(iadc_channels);

	return FUNC6(dev, indio_dev);
}