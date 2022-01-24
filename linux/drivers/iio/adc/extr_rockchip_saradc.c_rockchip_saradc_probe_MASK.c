#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct rockchip_saradc {int /*<<< orphan*/ * vref; int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * clk; TYPE_2__* data; int /*<<< orphan*/ * reset; int /*<<< orphan*/  completion; int /*<<< orphan*/ * regs; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct TYPE_13__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 void* FUNC8 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,char*) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rockchip_saradc*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*,char*) ; 
 int FUNC14 (struct iio_dev*) ; 
 struct rockchip_saradc* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rockchip_saradc_iio_info ; 
 int /*<<< orphan*/  rockchip_saradc_isr ; 
 int /*<<< orphan*/  rockchip_saradc_match ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct rockchip_saradc *info = NULL;
	struct device_node *np = pdev->dev.of_node;
	struct iio_dev *indio_dev = NULL;
	struct resource	*mem;
	const struct of_device_id *match;
	int ret;
	int irq;

	if (!np)
		return -ENODEV;

	indio_dev = FUNC9(&pdev->dev, sizeof(*info));
	if (!indio_dev) {
		FUNC6(&pdev->dev, "failed allocating iio device\n");
		return -ENOMEM;
	}
	info = FUNC15(indio_dev);

	match = FUNC17(rockchip_saradc_match, &pdev->dev);
	if (!match) {
		FUNC6(&pdev->dev, "failed to match device\n");
		return -ENODEV;
	}

	info->data = match->data;

	mem = FUNC19(pdev, IORESOURCE_MEM, 0);
	info->regs = FUNC10(&pdev->dev, mem);
	if (FUNC0(info->regs))
		return FUNC1(info->regs);

	/*
	 * The reset should be an optional property, as it should work
	 * with old devicetrees as well
	 */
	info->reset = FUNC13(&pdev->dev,
						       "saradc-apb");
	if (FUNC0(info->reset)) {
		ret = FUNC1(info->reset);
		if (ret != -ENOENT)
			return ret;

		FUNC5(&pdev->dev, "no reset control found\n");
		info->reset = NULL;
	}

	FUNC16(&info->completion);

	irq = FUNC18(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC12(&pdev->dev, irq, rockchip_saradc_isr,
			       0, FUNC7(&pdev->dev), info);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed requesting irq %d\n", irq);
		return ret;
	}

	info->pclk = FUNC8(&pdev->dev, "apb_pclk");
	if (FUNC0(info->pclk)) {
		FUNC6(&pdev->dev, "failed to get pclk\n");
		return FUNC1(info->pclk);
	}

	info->clk = FUNC8(&pdev->dev, "saradc");
	if (FUNC0(info->clk)) {
		FUNC6(&pdev->dev, "failed to get adc clock\n");
		return FUNC1(info->clk);
	}

	info->vref = FUNC11(&pdev->dev, "vref");
	if (FUNC0(info->vref)) {
		FUNC6(&pdev->dev, "failed to get regulator, %ld\n",
			FUNC1(info->vref));
		return FUNC1(info->vref);
	}

	if (info->reset)
		FUNC23(info->reset);

	/*
	 * Use a default value for the converter clock.
	 * This may become user-configurable in the future.
	 */
	ret = FUNC4(info->clk, info->data->clk_rate);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to set adc clk rate, %d\n", ret);
		return ret;
	}

	ret = FUNC22(info->vref);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to enable vref regulator\n");
		return ret;
	}

	ret = FUNC3(info->pclk);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to enable pclk\n");
		goto err_reg_voltage;
	}

	ret = FUNC3(info->clk);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to enable converter clock\n");
		goto err_pclk;
	}

	FUNC20(pdev, indio_dev);

	indio_dev->name = FUNC7(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &rockchip_saradc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	indio_dev->channels = info->data->channels;
	indio_dev->num_channels = info->data->num_channels;

	ret = FUNC14(indio_dev);
	if (ret)
		goto err_clk;

	return 0;

err_clk:
	FUNC2(info->clk);
err_pclk:
	FUNC2(info->pclk);
err_reg_voltage:
	FUNC21(info->vref);
	return ret;
}