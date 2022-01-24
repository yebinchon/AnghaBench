#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cc10001_adc_device {int shared; unsigned long eoc_delay_ns; int start_delay_ns; int /*<<< orphan*/  reg; int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 scalar_t__ CC10001_ADC_NUM_CHANNELS ; 
 int CC10001_WAIT_CYCLES ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long NSEC_PER_SEC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*,unsigned long) ; 
 int /*<<< orphan*/  cc10001_adc_info ; 
 int /*<<< orphan*/  FUNC4 (struct cc10001_adc_device*) ; 
 int /*<<< orphan*/  cc10001_adc_trigger_h ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 struct iio_dev* FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 int FUNC14 (struct iio_dev*) ; 
 struct cc10001_adc_device* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct iio_dev*) ; 
 int FUNC17 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*,char*,int*) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct cc10001_adc_device *adc_dev;
	unsigned long adc_clk_rate;
	struct resource *res;
	struct iio_dev *indio_dev;
	unsigned long channel_map;
	int ret;

	indio_dev = FUNC11(&pdev->dev, sizeof(*adc_dev));
	if (indio_dev == NULL)
		return -ENOMEM;

	adc_dev = FUNC15(indio_dev);

	channel_map = FUNC0(CC10001_ADC_NUM_CHANNELS - 1, 0);
	if (!FUNC19(node, "adc-reserved-channels", &ret)) {
		adc_dev->shared = true;
		channel_map &= ~ret;
	}

	adc_dev->reg = FUNC13(&pdev->dev, "vref");
	if (FUNC1(adc_dev->reg))
		return FUNC2(adc_dev->reg);

	ret = FUNC23(adc_dev->reg);
	if (ret)
		return ret;

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->name = FUNC9(&pdev->dev);
	indio_dev->info = &cc10001_adc_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	adc_dev->reg_base = FUNC12(&pdev->dev, res);
	if (FUNC1(adc_dev->reg_base)) {
		ret = FUNC2(adc_dev->reg_base);
		goto err_disable_reg;
	}

	adc_dev->adc_clk = FUNC10(&pdev->dev, "adc");
	if (FUNC1(adc_dev->adc_clk)) {
		FUNC8(&pdev->dev, "failed to get the clock\n");
		ret = FUNC2(adc_dev->adc_clk);
		goto err_disable_reg;
	}

	ret = FUNC7(adc_dev->adc_clk);
	if (ret) {
		FUNC8(&pdev->dev, "failed to enable the clock\n");
		goto err_disable_reg;
	}

	adc_clk_rate = FUNC6(adc_dev->adc_clk);
	if (!adc_clk_rate) {
		ret = -EINVAL;
		FUNC8(&pdev->dev, "null clock rate!\n");
		goto err_disable_clk;
	}

	adc_dev->eoc_delay_ns = NSEC_PER_SEC / adc_clk_rate;
	adc_dev->start_delay_ns = adc_dev->eoc_delay_ns * CC10001_WAIT_CYCLES;

	/*
	 * There is only one register to power-up/power-down the AUX ADC.
	 * If the ADC is shared among multiple CPUs, always power it up here.
	 * If the ADC is used only by the MIPS, power-up/power-down at runtime.
	 */
	if (adc_dev->shared)
		FUNC4(adc_dev);

	/* Setup the ADC channels available on the device */
	ret = FUNC3(indio_dev, channel_map);
	if (ret < 0)
		goto err_disable_clk;

	FUNC18(&adc_dev->lock);

	ret = FUNC17(indio_dev, NULL,
					 &cc10001_adc_trigger_h, NULL);
	if (ret < 0)
		goto err_disable_clk;

	ret = FUNC14(indio_dev);
	if (ret < 0)
		goto err_cleanup_buffer;

	FUNC21(pdev, indio_dev);

	return 0;

err_cleanup_buffer:
	FUNC16(indio_dev);
err_disable_clk:
	FUNC5(adc_dev->adc_clk);
err_disable_reg:
	FUNC22(adc_dev->reg);
	return ret;
}