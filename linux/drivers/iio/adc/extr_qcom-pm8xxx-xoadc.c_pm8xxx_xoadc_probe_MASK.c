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
struct xoadc_variant {int /*<<< orphan*/  name; } ;
struct regmap {int dummy; } ;
struct pm8xxx_xoadc {int /*<<< orphan*/  vref; int /*<<< orphan*/  nchans; int /*<<< orphan*/  iio_chans; struct regmap* map; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; struct xoadc_variant const* variant; struct device* dev; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 struct pm8xxx_xoadc* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct xoadc_variant* FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct iio_dev*) ; 
 int FUNC16 (struct pm8xxx_xoadc*) ; 
 int /*<<< orphan*/  pm8xxx_eoc_irq ; 
 int /*<<< orphan*/  pm8xxx_xoadc_info ; 
 int FUNC17 (struct pm8xxx_xoadc*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	const struct xoadc_variant *variant;
	struct pm8xxx_xoadc *adc;
	struct iio_dev *indio_dev;
	struct device_node *np = pdev->dev.of_node;
	struct regmap *map;
	struct device *dev = &pdev->dev;
	int ret;

	variant = FUNC13(dev);
	if (!variant)
		return -ENODEV;

	indio_dev = FUNC5(dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;
	FUNC15(pdev, indio_dev);

	adc = FUNC10(indio_dev);
	adc->dev = dev;
	adc->variant = variant;
	FUNC11(&adc->complete);
	FUNC12(&adc->lock);

	ret = FUNC17(adc, np);
	if (ret)
		return ret;

	map = FUNC3(dev->parent, NULL);
	if (!map) {
		FUNC2(dev, "parent regmap unavailable.\n");
		return -ENXIO;
	}
	adc->map = map;

	/* Bring up regulator */
	adc->vref = FUNC6(dev, "xoadc-ref");
	if (FUNC0(adc->vref)) {
		FUNC2(dev, "failed to get XOADC VREF regulator\n");
		return FUNC1(adc->vref);
	}
	ret = FUNC19(adc->vref);
	if (ret) {
		FUNC2(dev, "failed to enable XOADC VREF regulator\n");
		return ret;
	}

	ret = FUNC7(dev, FUNC14(pdev, 0),
			pm8xxx_eoc_irq, NULL, 0, variant->name, indio_dev);
	if (ret) {
		FUNC2(dev, "unable to request IRQ\n");
		goto out_disable_vref;
	}

	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = np;
	indio_dev->name = variant->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &pm8xxx_xoadc_info;
	indio_dev->channels = adc->iio_chans;
	indio_dev->num_channels = adc->nchans;

	ret = FUNC8(indio_dev);
	if (ret)
		goto out_disable_vref;

	ret = FUNC16(adc);
	if (ret)
		goto out_unreg_device;

	FUNC4(dev, "%s XOADC driver enabled\n", variant->name);

	return 0;

out_unreg_device:
	FUNC9(indio_dev);
out_disable_vref:
	FUNC18(adc->vref);

	return ret;
}