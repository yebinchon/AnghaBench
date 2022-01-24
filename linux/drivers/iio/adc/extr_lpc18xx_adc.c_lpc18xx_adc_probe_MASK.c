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
struct lpc18xx_adc {unsigned int cr_reg; scalar_t__ vref; scalar_t__ clk; scalar_t__ base; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  LPC18XX_ADC_CLK_TARGET ; 
 scalar_t__ LPC18XX_ADC_CR ; 
 unsigned int LPC18XX_ADC_CR_CLKDIV_SHIFT ; 
 unsigned int LPC18XX_ADC_CR_PDN ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct resource*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (struct iio_dev*) ; 
 struct lpc18xx_adc* FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  lpc18xx_adc_iio_channels ; 
 int /*<<< orphan*/  lpc18xx_adc_info ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct iio_dev *indio_dev;
	struct lpc18xx_adc *adc;
	struct resource *res;
	unsigned int clkdiv;
	unsigned long rate;
	int ret;

	indio_dev = FUNC10(&pdev->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	FUNC17(pdev, indio_dev);
	adc = FUNC14(indio_dev);
	adc->dev = &pdev->dev;
	FUNC15(&adc->lock);

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	adc->base = FUNC11(&pdev->dev, res);
	if (FUNC2(adc->base))
		return FUNC3(adc->base);

	adc->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC2(adc->clk)) {
		FUNC7(&pdev->dev, "error getting clock\n");
		return FUNC3(adc->clk);
	}

	rate = FUNC5(adc->clk);
	clkdiv = FUNC1(rate, LPC18XX_ADC_CLK_TARGET);

	adc->vref = FUNC12(&pdev->dev, "vref");
	if (FUNC2(adc->vref)) {
		FUNC7(&pdev->dev, "error getting regulator\n");
		return FUNC3(adc->vref);
	}

	indio_dev->name = FUNC8(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &lpc18xx_adc_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = lpc18xx_adc_iio_channels;
	indio_dev->num_channels = FUNC0(lpc18xx_adc_iio_channels);

	ret = FUNC19(adc->vref);
	if (ret) {
		FUNC7(&pdev->dev, "unable to enable regulator\n");
		return ret;
	}

	ret = FUNC6(adc->clk);
	if (ret) {
		FUNC7(&pdev->dev, "unable to enable clock\n");
		goto dis_reg;
	}

	adc->cr_reg = (clkdiv << LPC18XX_ADC_CR_CLKDIV_SHIFT) |
			LPC18XX_ADC_CR_PDN;
	FUNC20(adc->cr_reg, adc->base + LPC18XX_ADC_CR);

	ret = FUNC13(indio_dev);
	if (ret) {
		FUNC7(&pdev->dev, "unable to register device\n");
		goto dis_clk;
	}

	return 0;

dis_clk:
	FUNC20(0, adc->base + LPC18XX_ADC_CR);
	FUNC4(adc->clk);
dis_reg:
	FUNC18(adc->vref);
	return ret;
}