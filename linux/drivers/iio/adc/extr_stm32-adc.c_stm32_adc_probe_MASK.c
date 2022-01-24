#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stm32_adc_cfg {int /*<<< orphan*/  clk_required; } ;
struct stm32_adc {scalar_t__ irq; TYPE_5__* dma_chan; int /*<<< orphan*/  rx_dma_buf; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/ * clk; struct stm32_adc_cfg const* cfg; int /*<<< orphan*/  offset; int /*<<< orphan*/  completion; int /*<<< orphan*/  lock; int /*<<< orphan*/  common; } ;
struct device {scalar_t__ of_node; TYPE_1__* driver; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ of_node; struct device* parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/ * info; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_3__* device; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int INDIO_DIRECT_MODE ; 
 int INDIO_HARDWARE_TRIGGERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STM32_ADC_HW_STOP_DELAY_MS ; 
 int /*<<< orphan*/  STM32_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct stm32_adc* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC16 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct stm32_adc*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_adc_buffer_setup_ops ; 
 int FUNC30 (struct iio_dev*) ; 
 int FUNC31 (struct iio_dev*) ; 
 int FUNC32 (struct device*) ; 
 int /*<<< orphan*/  FUNC33 (struct device*) ; 
 int /*<<< orphan*/  stm32_adc_iio_info ; 
 int /*<<< orphan*/  stm32_adc_isr ; 
 int FUNC34 (struct iio_dev*) ; 
 int /*<<< orphan*/  stm32_adc_trigger_handler ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct iio_dev *indio_dev;
	struct device *dev = &pdev->dev;
	struct stm32_adc *adc;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	indio_dev = FUNC6(&pdev->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC11(indio_dev);
	adc->common = FUNC3(pdev->dev.parent);
	FUNC29(&adc->lock);
	FUNC14(&adc->completion);
	adc->cfg = (const struct stm32_adc_cfg *)
		FUNC15(dev->driver->of_match_table, dev)->data;

	indio_dev->name = FUNC4(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &stm32_adc_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_HARDWARE_TRIGGERED;

	FUNC18(pdev, adc);

	ret = FUNC16(pdev->dev.of_node, "reg", &adc->offset);
	if (ret != 0) {
		FUNC2(&pdev->dev, "missing reg property\n");
		return -EINVAL;
	}

	adc->irq = FUNC17(pdev, 0);
	if (adc->irq < 0)
		return adc->irq;

	ret = FUNC7(&pdev->dev, adc->irq, stm32_adc_isr,
			       0, pdev->name, adc);
	if (ret) {
		FUNC2(&pdev->dev, "failed to request IRQ\n");
		return ret;
	}

	adc->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(adc->clk)) {
		ret = FUNC1(adc->clk);
		if (ret == -ENOENT && !adc->cfg->clk_required) {
			adc->clk = NULL;
		} else {
			FUNC2(&pdev->dev, "Can't get clock\n");
			return ret;
		}
	}

	ret = FUNC34(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC30(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC31(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC13(indio_dev,
					 &iio_pollfunc_store_time,
					 &stm32_adc_trigger_handler,
					 &stm32_adc_buffer_setup_ops);
	if (ret) {
		FUNC2(&pdev->dev, "buffer setup failed\n");
		goto err_dma_disable;
	}

	/* Get stm32-adc-core PM online */
	FUNC21(dev);
	FUNC25(dev);
	FUNC26(dev, STM32_ADC_HW_STOP_DELAY_MS);
	FUNC28(dev);
	FUNC20(dev);

	ret = FUNC32(dev);
	if (ret)
		goto err_buffer_cleanup;

	ret = FUNC10(indio_dev);
	if (ret) {
		FUNC2(&pdev->dev, "iio dev register failed\n");
		goto err_hw_stop;
	}

	FUNC22(dev);
	FUNC23(dev);

	return 0;

err_hw_stop:
	FUNC33(dev);

err_buffer_cleanup:
	FUNC19(dev);
	FUNC27(dev);
	FUNC24(dev);
	FUNC12(indio_dev);

err_dma_disable:
	if (adc->dma_chan) {
		FUNC8(adc->dma_chan->device->dev,
				  STM32_DMA_BUFFER_SIZE,
				  adc->rx_buf, adc->rx_dma_buf);
		FUNC9(adc->dma_chan);
	}

	return ret;
}