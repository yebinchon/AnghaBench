#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct s3c2410_ts_mach_info {int delay; } ;
struct resource {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_11__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct iio_dev {TYPE_1__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; } ;
struct exynos_adc {int irq; int tsirq; int delay; void* vdd; TYPE_2__* data; int /*<<< orphan*/  input; void* sclk; void* clk; int /*<<< orphan*/  completion; TYPE_3__* dev; void* pmu_map; void* regs; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* exit_hw ) (struct exynos_adc*) ;int /*<<< orphan*/  (* init_hw ) (struct exynos_adc*) ;int /*<<< orphan*/  num_channels; scalar_t__ needs_sclk; scalar_t__ needs_adc_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INPUT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct s3c2410_ts_mach_info* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC8 (TYPE_3__*,int) ; 
 void* FUNC9 (TYPE_3__*,struct resource*) ; 
 void* FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct exynos_adc*) ; 
 int FUNC12 (struct exynos_adc*) ; 
 TYPE_2__* FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  exynos_adc_iio_channels ; 
 int /*<<< orphan*/  exynos_adc_iio_info ; 
 int /*<<< orphan*/  exynos_adc_isr ; 
 int /*<<< orphan*/  exynos_adc_match ; 
 int FUNC14 (struct exynos_adc*) ; 
 int /*<<< orphan*/  exynos_adc_remove_devices ; 
 int FUNC15 (struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC16 (struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct exynos_adc*) ; 
 int FUNC18 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct iio_dev*) ; 
 struct exynos_adc* FUNC20 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC24 (struct device_node*,char*) ; 
 int FUNC25 (struct platform_device*,int) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 
 int FUNC29 (void*) ; 
 int FUNC30 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC31 (struct exynos_adc*) ; 
 int /*<<< orphan*/  FUNC32 (struct exynos_adc*) ; 
 void* FUNC33 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct exynos_adc *info = NULL;
	struct device_node *np = pdev->dev.of_node;
	struct s3c2410_ts_mach_info *pdata = FUNC4(&pdev->dev);
	struct iio_dev *indio_dev = NULL;
	struct resource	*mem;
	bool has_ts = false;
	int ret = -ENODEV;
	int irq;

	indio_dev = FUNC8(&pdev->dev, sizeof(struct exynos_adc));
	if (!indio_dev) {
		FUNC3(&pdev->dev, "failed allocating iio device\n");
		return -ENOMEM;
	}

	info = FUNC20(indio_dev);

	info->data = FUNC13(pdev);
	if (!info->data) {
		FUNC3(&pdev->dev, "failed getting exynos_adc_data\n");
		return -EINVAL;
	}

	mem = FUNC26(pdev, IORESOURCE_MEM, 0);
	info->regs = FUNC9(&pdev->dev, mem);
	if (FUNC0(info->regs))
		return FUNC2(info->regs);


	if (info->data->needs_adc_phy) {
		info->pmu_map = FUNC33(
					pdev->dev.of_node,
					"samsung,syscon-phandle");
		if (FUNC0(info->pmu_map)) {
			FUNC3(&pdev->dev, "syscon regmap lookup failed.\n");
			return FUNC2(info->pmu_map);
		}
	}

	irq = FUNC25(pdev, 0);
	if (irq < 0)
		return irq;
	info->irq = irq;

	irq = FUNC25(pdev, 1);
	if (irq == -EPROBE_DEFER)
		return irq;

	info->tsirq = irq;

	info->dev = &pdev->dev;

	FUNC21(&info->completion);

	info->clk = FUNC7(&pdev->dev, "adc");
	if (FUNC0(info->clk)) {
		FUNC3(&pdev->dev, "failed getting clock, err = %ld\n",
							FUNC2(info->clk));
		return FUNC2(info->clk);
	}

	if (info->data->needs_sclk) {
		info->sclk = FUNC7(&pdev->dev, "sclk");
		if (FUNC0(info->sclk)) {
			FUNC3(&pdev->dev,
				"failed getting sclk clock, err = %ld\n",
				FUNC2(info->sclk));
			return FUNC2(info->sclk);
		}
	}

	info->vdd = FUNC10(&pdev->dev, "vdd");
	if (FUNC0(info->vdd)) {
		FUNC3(&pdev->dev, "failed getting regulator, err = %ld\n",
							FUNC2(info->vdd));
		return FUNC2(info->vdd);
	}

	ret = FUNC29(info->vdd);
	if (ret)
		return ret;

	ret = FUNC14(info);
	if (ret)
		goto err_disable_reg;

	ret = FUNC12(info);
	if (ret)
		goto err_unprepare_clk;

	FUNC27(pdev, indio_dev);

	indio_dev->name = FUNC5(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &exynos_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = exynos_adc_iio_channels;
	indio_dev->num_channels = info->data->num_channels;

	ret = FUNC30(info->irq, exynos_adc_isr,
					0, FUNC5(&pdev->dev), info);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed requesting irq, irq = %d\n",
							info->irq);
		goto err_disable_clk;
	}

	ret = FUNC18(indio_dev);
	if (ret)
		goto err_irq;

	if (info->data->init_hw)
		info->data->init_hw(info);

	/* leave out any TS related code if unreachable */
	if (FUNC1(CONFIG_INPUT)) {
		has_ts = FUNC24(pdev->dev.of_node,
					       "has-touchscreen") || pdata;
	}

	if (pdata)
		info->delay = pdata->delay;
	else
		info->delay = 10000;

	if (has_ts)
		ret = FUNC15(info);
	if (ret)
		goto err_iio;

	ret = FUNC23(np, exynos_adc_match, NULL, &indio_dev->dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed adding child nodes\n");
		goto err_of_populate;
	}

	return 0;

err_of_populate:
	FUNC6(&indio_dev->dev, NULL,
				exynos_adc_remove_devices);
	if (has_ts) {
		FUNC22(info->input);
		FUNC17(info->tsirq, info);
	}
err_iio:
	FUNC19(indio_dev);
err_irq:
	FUNC17(info->irq, info);
err_disable_clk:
	if (info->data->exit_hw)
		info->data->exit_hw(info);
	FUNC11(info);
err_unprepare_clk:
	FUNC16(info);
err_disable_reg:
	FUNC28(info->vdd);
	return ret;
}