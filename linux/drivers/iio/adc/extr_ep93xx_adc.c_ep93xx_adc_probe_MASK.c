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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ep93xx_adc_priv {int lastch; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct clk*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  ep93xx_adc_channels ; 
 int /*<<< orphan*/  ep93xx_adc_info ; 
 int FUNC14 (struct iio_dev*) ; 
 struct ep93xx_adc_priv* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	int ret;
	struct iio_dev *iiodev;
	struct ep93xx_adc_priv *priv;
	struct clk *pclk;
	struct resource *res;

	iiodev = FUNC12(&pdev->dev, sizeof(*priv));
	if (!iiodev)
		return -ENOMEM;
	priv = FUNC15(iiodev);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC13(&pdev->dev, res);
	if (FUNC1(priv->base)) {
		FUNC8(&pdev->dev, "Cannot map memory resource\n");
		return FUNC2(priv->base);
	}

	iiodev->dev.parent = &pdev->dev;
	iiodev->name = FUNC9(&pdev->dev);
	iiodev->modes = INDIO_DIRECT_MODE;
	iiodev->info = &ep93xx_adc_info;
	iiodev->num_channels = FUNC0(ep93xx_adc_channels);
	iiodev->channels = ep93xx_adc_channels;

	priv->lastch = -1;
	FUNC16(&priv->lock);

	FUNC18(pdev, iiodev);

	priv->clk = FUNC11(&pdev->dev, NULL);
	if (FUNC1(priv->clk)) {
		FUNC8(&pdev->dev, "Cannot obtain clock\n");
		return FUNC2(priv->clk);
	}

	pclk = FUNC5(priv->clk);
	if (!pclk) {
		FUNC10(&pdev->dev, "Cannot obtain parent clock\n");
	} else {
		/*
		 * This is actually a place for improvement:
		 * EP93xx ADC supports two clock divisors -- 4 and 16,
		 * resulting in conversion rates 3750 and 925 samples per second
		 * with 500us or 2ms settling time respectively.
		 * One might find this interesting enough to be configurable.
		 */
		ret = FUNC7(priv->clk, FUNC6(pclk) / 16);
		if (ret)
			FUNC10(&pdev->dev, "Cannot set clock rate\n");
		/*
		 * We can tolerate rate setting failure because the module should
		 * work in any case.
		 */
	}

	ret = FUNC4(priv->clk);
	if (ret) {
		FUNC8(&pdev->dev, "Cannot enable clock\n");
		return ret;
	}

	ret = FUNC14(iiodev);
	if (ret)
		FUNC3(priv->clk);

	return ret;
}