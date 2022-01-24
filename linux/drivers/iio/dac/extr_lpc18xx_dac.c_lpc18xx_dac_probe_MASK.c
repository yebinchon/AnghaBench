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
struct lpc18xx_dac {scalar_t__ vref; scalar_t__ clk; scalar_t__ base; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ LPC18XX_DAC_CR ; 
 scalar_t__ LPC18XX_DAC_CTRL ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (struct iio_dev*) ; 
 struct lpc18xx_dac* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  lpc18xx_dac_iio_channels ; 
 int /*<<< orphan*/  lpc18xx_dac_info ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct iio_dev *indio_dev;
	struct lpc18xx_dac *dac;
	struct resource *res;
	int ret;

	indio_dev = FUNC8(&pdev->dev, sizeof(*dac));
	if (!indio_dev)
		return -ENOMEM;

	FUNC15(pdev, indio_dev);
	dac = FUNC12(indio_dev);
	FUNC13(&dac->lock);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	dac->base = FUNC9(&pdev->dev, res);
	if (FUNC1(dac->base))
		return FUNC2(dac->base);

	dac->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC1(dac->clk)) {
		FUNC5(&pdev->dev, "error getting clock\n");
		return FUNC2(dac->clk);
	}

	dac->vref = FUNC10(&pdev->dev, "vref");
	if (FUNC1(dac->vref)) {
		FUNC5(&pdev->dev, "error getting regulator\n");
		return FUNC2(dac->vref);
	}

	indio_dev->name = FUNC6(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &lpc18xx_dac_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = lpc18xx_dac_iio_channels;
	indio_dev->num_channels = FUNC0(lpc18xx_dac_iio_channels);

	ret = FUNC17(dac->vref);
	if (ret) {
		FUNC5(&pdev->dev, "unable to enable regulator\n");
		return ret;
	}

	ret = FUNC4(dac->clk);
	if (ret) {
		FUNC5(&pdev->dev, "unable to enable clock\n");
		goto dis_reg;
	}

	FUNC18(0, dac->base + LPC18XX_DAC_CTRL);
	FUNC18(0, dac->base + LPC18XX_DAC_CR);

	ret = FUNC11(indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "unable to register device\n");
		goto dis_clk;
	}

	return 0;

dis_clk:
	FUNC3(dac->clk);
dis_reg:
	FUNC16(dac->vref);
	return ret;
}