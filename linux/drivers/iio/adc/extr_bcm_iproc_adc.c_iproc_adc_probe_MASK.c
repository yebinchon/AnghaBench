#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iproc_adc_priv {scalar_t__ irqno; int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  completion; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IPROC_ADC_AUXIN_SCAN_ENA ; 
 int /*<<< orphan*/  IPROC_REGCTL2 ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 struct iio_dev* FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct iproc_adc_priv* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  iproc_adc_iio_channels ; 
 int /*<<< orphan*/  iproc_adc_iio_info ; 
 int /*<<< orphan*/  iproc_adc_interrupt_handler ; 
 int /*<<< orphan*/  iproc_adc_interrupt_thread ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct iio_dev*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct iproc_adc_priv *adc_priv;
	struct iio_dev *indio_dev = NULL;
	int ret;

	indio_dev = FUNC7(&pdev->dev,
					sizeof(*adc_priv));
	if (!indio_dev) {
		FUNC5(&pdev->dev, "failed to allocate iio device\n");
		return -ENOMEM;
	}

	adc_priv = FUNC10(indio_dev);
	FUNC16(pdev, indio_dev);

	FUNC14(&adc_priv->mutex);

	FUNC11(&adc_priv->completion);

	adc_priv->regmap = FUNC18(pdev->dev.of_node,
			   "adc-syscon");
	if (FUNC1(adc_priv->regmap)) {
		FUNC5(&pdev->dev, "failed to get handle for tsc syscon\n");
		ret = FUNC2(adc_priv->regmap);
		return ret;
	}

	adc_priv->adc_clk = FUNC6(&pdev->dev, "tsc_clk");
	if (FUNC1(adc_priv->adc_clk)) {
		FUNC5(&pdev->dev,
			"failed getting clock tsc_clk\n");
		ret = FUNC2(adc_priv->adc_clk);
		return ret;
	}

	adc_priv->irqno = FUNC15(pdev, 0);
	if (adc_priv->irqno <= 0)
		return -ENODEV;

	ret = FUNC17(adc_priv->regmap, IPROC_REGCTL2,
				IPROC_ADC_AUXIN_SCAN_ENA, 0);
	if (ret) {
		FUNC5(&pdev->dev, "failed to write IPROC_REGCTL2 %d\n", ret);
		return ret;
	}

	ret = FUNC8(&pdev->dev, adc_priv->irqno,
				iproc_adc_interrupt_handler,
				iproc_adc_interrupt_thread,
				IRQF_SHARED, "iproc-adc", indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "request_irq error %d\n", ret);
		return ret;
	}

	ret = FUNC4(adc_priv->adc_clk);
	if (ret) {
		FUNC5(&pdev->dev,
			"clk_prepare_enable failed %d\n", ret);
		return ret;
	}

	ret = FUNC13(indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "failed to enable adc %d\n", ret);
		goto err_adc_enable;
	}

	indio_dev->name = "iproc-static-adc";
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &iproc_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = iproc_adc_iio_channels;
	indio_dev->num_channels = FUNC0(iproc_adc_iio_channels);

	ret = FUNC9(indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "iio_device_register failed:err %d\n", ret);
		goto err_clk;
	}

	return 0;

err_clk:
	FUNC12(indio_dev);
err_adc_enable:
	FUNC3(adc_priv->adc_clk);

	return ret;
}