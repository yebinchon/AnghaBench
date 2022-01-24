#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  default_sample_time; } ;
struct vf610_adc {int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; int /*<<< orphan*/  completion; TYPE_1__ adc_feature; int /*<<< orphan*/  max_adck_rate; int /*<<< orphan*/  vref_uv; TYPE_3__* dev; int /*<<< orphan*/  regs; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_2__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_SAMPLE_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct vf610_adc* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_triggered_buffer_setup_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct vf610_adc*) ; 
 int /*<<< orphan*/  FUNC26 (struct vf610_adc*) ; 
 int /*<<< orphan*/  vf610_adc_iio_channels ; 
 int /*<<< orphan*/  vf610_adc_iio_info ; 
 int /*<<< orphan*/  vf610_adc_isr ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct vf610_adc *info;
	struct iio_dev *indio_dev;
	struct resource *mem;
	int irq;
	int ret;

	indio_dev = FUNC8(&pdev->dev, sizeof(struct vf610_adc));
	if (!indio_dev) {
		FUNC5(&pdev->dev, "Failed allocating iio device\n");
		return -ENOMEM;
	}

	info = FUNC13(indio_dev);
	info->dev = &pdev->dev;

	mem = FUNC20(pdev, IORESOURCE_MEM, 0);
	info->regs = FUNC9(&pdev->dev, mem);
	if (FUNC1(info->regs))
		return FUNC2(info->regs);

	irq = FUNC19(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC11(info->dev, irq,
				vf610_adc_isr, 0,
				FUNC6(&pdev->dev), indio_dev);
	if (ret < 0) {
		FUNC5(&pdev->dev, "failed requesting irq, irq = %d\n", irq);
		return ret;
	}

	info->clk = FUNC7(&pdev->dev, "adc");
	if (FUNC1(info->clk)) {
		FUNC5(&pdev->dev, "failed getting clock, err = %ld\n",
						FUNC2(info->clk));
		return FUNC2(info->clk);
	}

	info->vref = FUNC10(&pdev->dev, "vref");
	if (FUNC1(info->vref))
		return FUNC2(info->vref);

	ret = FUNC23(info->vref);
	if (ret)
		return ret;

	info->vref_uv = FUNC24(info->vref);

	FUNC18(pdev->dev.of_node, "fsl,adck-max-frequency",
			info->max_adck_rate, 3);

	ret = FUNC17(pdev->dev.of_node, "min-sample-time",
			&info->adc_feature.default_sample_time);
	if (ret)
		info->adc_feature.default_sample_time = DEFAULT_SAMPLE_TIME;

	FUNC21(pdev, indio_dev);

	FUNC16(&info->completion);

	indio_dev->name = FUNC6(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &vf610_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = vf610_adc_iio_channels;
	indio_dev->num_channels = FUNC0(vf610_adc_iio_channels);

	ret = FUNC4(info->clk);
	if (ret) {
		FUNC5(&pdev->dev,
			"Could not prepare or enable the clock.\n");
		goto error_adc_clk_enable;
	}

	FUNC25(info);
	FUNC26(info);

	ret = FUNC15(indio_dev, &iio_pollfunc_store_time,
					NULL, &iio_triggered_buffer_setup_ops);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Couldn't initialise the buffer\n");
		goto error_iio_device_register;
	}

	ret = FUNC12(indio_dev);
	if (ret) {
		FUNC5(&pdev->dev, "Couldn't register the device.\n");
		goto error_adc_buffer_init;
	}

	return 0;

error_adc_buffer_init:
	FUNC14(indio_dev);
error_iio_device_register:
	FUNC3(info->clk);
error_adc_clk_enable:
	FUNC22(info->vref);

	return ret;
}