#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct imx7d_adc {int /*<<< orphan*/  completion; int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; struct device* dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __imx7d_adc_disable ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct iio_dev* FUNC7 (struct device*,int) ; 
 int FUNC8 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx7d_adc*) ; 
 struct imx7d_adc* FUNC12 (struct iio_dev*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct imx7d_adc*) ; 
 int /*<<< orphan*/  imx7d_adc_iio_channels ; 
 int /*<<< orphan*/  imx7d_adc_iio_info ; 
 int /*<<< orphan*/  imx7d_adc_isr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct imx7d_adc *info;
	struct iio_dev *indio_dev;
	struct device *dev = &pdev->dev;
	int irq;
	int ret;

	indio_dev = FUNC7(dev, sizeof(*info));
	if (!indio_dev) {
		FUNC3(&pdev->dev, "Failed allocating iio device\n");
		return -ENOMEM;
	}

	info = FUNC12(indio_dev);
	info->dev = dev;

	info->regs = FUNC9(pdev, 0);
	if (FUNC1(info->regs))
		return FUNC2(info->regs);

	irq = FUNC16(pdev, 0);
	if (irq < 0)
		return irq;

	info->clk = FUNC6(dev, "adc");
	if (FUNC1(info->clk)) {
		ret = FUNC2(info->clk);
		FUNC3(dev, "Failed getting clock, err = %d\n", ret);
		return ret;
	}

	info->vref = FUNC10(dev, "vref");
	if (FUNC1(info->vref)) {
		ret = FUNC2(info->vref);
		FUNC3(dev,
			"Failed getting reference voltage, err = %d\n", ret);
		return ret;
	}

	FUNC17(pdev, indio_dev);

	FUNC15(&info->completion);

	indio_dev->name = FUNC4(dev);
	indio_dev->dev.parent = dev;
	indio_dev->info = &imx7d_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = imx7d_adc_iio_channels;
	indio_dev->num_channels = FUNC0(imx7d_adc_iio_channels);

	ret = FUNC11(dev, irq, imx7d_adc_isr, 0, FUNC4(dev), info);
	if (ret < 0) {
		FUNC3(dev, "Failed requesting irq, irq = %d\n", irq);
		return ret;
	}

	FUNC14(info);

	ret = FUNC13(&indio_dev->dev);
	if (ret)
		return ret;

	ret = FUNC5(dev, __imx7d_adc_disable,
				       &indio_dev->dev);
	if (ret)
		return ret;

	ret = FUNC8(dev, indio_dev);
	if (ret) {
		FUNC3(&pdev->dev, "Couldn't register the device.\n");
		return ret;
	}

	return 0;
}