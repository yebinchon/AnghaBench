#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* driver; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct berlin2_adc_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BERLIN2_SM_CTRL ; 
 int /*<<< orphan*/  BERLIN2_SM_CTRL_ADC_POWER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  berlin2_adc_channels ; 
 int /*<<< orphan*/  berlin2_adc_info ; 
 int /*<<< orphan*/  berlin2_adc_irq ; 
 int /*<<< orphan*/  berlin2_adc_tsen_irq ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct iio_dev* FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct berlin2_adc_priv* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int FUNC12 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct iio_dev *indio_dev;
	struct berlin2_adc_priv *priv;
	struct device_node *parent_np = FUNC10(pdev->dev.of_node);
	int irq, tsen_irq;
	int ret;

	indio_dev = FUNC4(&pdev->dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	priv = FUNC7(indio_dev);
	FUNC13(pdev, indio_dev);

	priv->regmap = FUNC15(parent_np);
	FUNC11(parent_np);
	if (FUNC1(priv->regmap))
		return FUNC2(priv->regmap);

	irq = FUNC12(pdev, "adc");
	if (irq < 0)
		return irq;

	tsen_irq = FUNC12(pdev, "tsen");
	if (tsen_irq < 0)
		return tsen_irq;

	ret = FUNC5(&pdev->dev, irq, berlin2_adc_irq, 0,
			       pdev->dev.driver->name, indio_dev);
	if (ret)
		return ret;

	ret = FUNC5(&pdev->dev, tsen_irq, berlin2_adc_tsen_irq,
			       0, pdev->dev.driver->name, indio_dev);
	if (ret)
		return ret;

	FUNC8(&priv->wq);
	FUNC9(&priv->lock);

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->name = FUNC3(&pdev->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &berlin2_adc_info;

	indio_dev->channels = berlin2_adc_channels;
	indio_dev->num_channels = FUNC0(berlin2_adc_channels);

	/* Power up the ADC */
	FUNC14(priv->regmap, BERLIN2_SM_CTRL,
			   BERLIN2_SM_CTRL_ADC_POWER,
			   BERLIN2_SM_CTRL_ADC_POWER);

	ret = FUNC6(indio_dev);
	if (ret) {
		/* Power down the ADC */
		FUNC14(priv->regmap, BERLIN2_SM_CTRL,
				   BERLIN2_SM_CTRL_ADC_POWER, 0);
		return ret;
	}

	return 0;
}