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
struct vadc_priv {int are_ref_measured; int poll_eoc; int /*<<< orphan*/  nchannels; int /*<<< orphan*/  iio_chans; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  base; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 int FUNC4 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vadc_priv*) ; 
 struct vadc_priv* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vadc_priv*) ; 
 int FUNC11 (struct vadc_priv*,struct device_node*) ; 
 int /*<<< orphan*/  vadc_info ; 
 int /*<<< orphan*/  vadc_isr ; 
 int FUNC12 (struct vadc_priv*) ; 
 int FUNC13 (struct vadc_priv*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct iio_dev *indio_dev;
	struct vadc_priv *vadc;
	struct regmap *regmap;
	int ret, irq_eoc;
	u32 reg;

	regmap = FUNC1(dev->parent, NULL);
	if (!regmap)
		return -ENODEV;

	ret = FUNC8(node, "reg", &reg);
	if (ret < 0)
		return ret;

	indio_dev = FUNC2(dev, sizeof(*vadc));
	if (!indio_dev)
		return -ENOMEM;

	vadc = FUNC5(indio_dev);
	vadc->regmap = regmap;
	vadc->dev = dev;
	vadc->base = reg;
	vadc->are_ref_measured = false;
	FUNC6(&vadc->complete);
	FUNC7(&vadc->lock);

	ret = FUNC10(vadc);
	if (ret)
		return ret;

	ret = FUNC11(vadc, node);
	if (ret)
		return ret;

	irq_eoc = FUNC9(pdev, 0);
	if (irq_eoc < 0) {
		if (irq_eoc == -EPROBE_DEFER || irq_eoc == -EINVAL)
			return irq_eoc;
		vadc->poll_eoc = true;
	} else {
		ret = FUNC4(dev, irq_eoc, vadc_isr, 0,
				       "spmi-vadc", vadc);
		if (ret)
			return ret;
	}

	ret = FUNC13(vadc);
	if (ret) {
		FUNC0(dev, "reset failed\n");
		return ret;
	}

	ret = FUNC12(vadc);
	if (ret)
		return ret;

	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = node;
	indio_dev->name = pdev->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &vadc_info;
	indio_dev->channels = vadc->iio_chans;
	indio_dev->num_channels = vadc->nchannels;

	return FUNC3(dev, indio_dev);
}