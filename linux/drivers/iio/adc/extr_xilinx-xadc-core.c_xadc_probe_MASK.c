#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct xadc {int irq; int* threshold; TYPE_2__* ops; void* convst_trigger; void* samplerate_trigger; void* clk; int /*<<< orphan*/  zynq_unmask_work; void* base; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  completion; } ;
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_5__* parent; } ;
struct iio_dev {char* name; int num_channels; TYPE_4__* channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; TYPE_1__ dev; } ;
struct TYPE_11__ {char sign; } ;
struct TYPE_12__ {int /*<<< orphan*/  scan_index; TYPE_3__ scan_type; } ;
struct TYPE_10__ {int flags; int (* setup ) (struct platform_device*,struct iio_dev*,int) ;int /*<<< orphan*/  interrupt_handler; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  XADC_CONF1_ALARM_MASK ; 
 int XADC_FLAGS_BUFFERED ; 
 int /*<<< orphan*/  XADC_REG_CONF0 ; 
 int /*<<< orphan*/  XADC_REG_CONF1 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 void* FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC11 (TYPE_5__*,int) ; 
 void* FUNC12 (TYPE_5__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct iio_dev*) ; 
 int FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct xadc* FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (struct iio_dev*) ; 
 int FUNC18 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct iio_dev*) ; 
 int FUNC26 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (struct platform_device*,struct iio_dev*,int) ; 
 void* FUNC29 (struct iio_dev*,char*) ; 
 int /*<<< orphan*/  xadc_buffer_ops ; 
 int /*<<< orphan*/  xadc_info ; 
 int /*<<< orphan*/  xadc_of_match_table ; 
 int FUNC30 (struct iio_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC31 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct xadc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  xadc_trigger_handler ; 
 int FUNC33 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct xadc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  xadc_zynq_unmask_worker ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	const struct of_device_id *id;
	struct iio_dev *indio_dev;
	unsigned int bipolar_mask;
	struct resource *mem;
	unsigned int conf0;
	struct xadc *xadc;
	int ret;
	int irq;
	int i;

	if (!pdev->dev.of_node)
		return -ENODEV;

	id = FUNC22(xadc_of_match_table, pdev->dev.of_node);
	if (!id)
		return -EINVAL;

	irq = FUNC23(pdev, 0);
	if (irq <= 0)
		return -ENXIO;

	indio_dev = FUNC11(&pdev->dev, sizeof(*xadc));
	if (!indio_dev)
		return -ENOMEM;

	xadc = FUNC15(indio_dev);
	xadc->ops = id->data;
	xadc->irq = irq;
	FUNC19(&xadc->completion);
	FUNC21(&xadc->mutex);
	FUNC27(&xadc->lock);
	FUNC1(&xadc->zynq_unmask_work, xadc_zynq_unmask_worker);

	mem = FUNC24(pdev, IORESOURCE_MEM, 0);
	xadc->base = FUNC12(&pdev->dev, mem);
	if (FUNC2(xadc->base))
		return FUNC3(xadc->base);

	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->name = "xadc";
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &xadc_info;

	ret = FUNC30(indio_dev, pdev->dev.of_node, &conf0);
	if (ret)
		goto err_device_free;

	if (xadc->ops->flags & XADC_FLAGS_BUFFERED) {
		ret = FUNC18(indio_dev,
			&iio_pollfunc_store_time, &xadc_trigger_handler,
			&xadc_buffer_ops);
		if (ret)
			goto err_device_free;

		xadc->convst_trigger = FUNC29(indio_dev, "convst");
		if (FUNC2(xadc->convst_trigger)) {
			ret = FUNC3(xadc->convst_trigger);
			goto err_triggered_buffer_cleanup;
		}
		xadc->samplerate_trigger = FUNC29(indio_dev,
			"samplerate");
		if (FUNC2(xadc->samplerate_trigger)) {
			ret = FUNC3(xadc->samplerate_trigger);
			goto err_free_convst_trigger;
		}
	}

	xadc->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC2(xadc->clk)) {
		ret = FUNC3(xadc->clk);
		goto err_free_samplerate_trigger;
	}

	ret = FUNC8(xadc->clk);
	if (ret)
		goto err_free_samplerate_trigger;

	ret = FUNC26(xadc->irq, xadc->ops->interrupt_handler, 0,
			FUNC9(&pdev->dev), indio_dev);
	if (ret)
		goto err_clk_disable_unprepare;

	ret = xadc->ops->setup(pdev, indio_dev, xadc->irq);
	if (ret)
		goto err_free_irq;

	for (i = 0; i < 16; i++)
		FUNC32(xadc, FUNC5(i),
			&xadc->threshold[i]);

	ret = FUNC34(xadc, XADC_REG_CONF0, conf0);
	if (ret)
		goto err_free_irq;

	bipolar_mask = 0;
	for (i = 0; i < indio_dev->num_channels; i++) {
		if (indio_dev->channels[i].scan_type.sign == 's')
			bipolar_mask |= FUNC0(indio_dev->channels[i].scan_index);
	}

	ret = FUNC34(xadc, FUNC4(0), bipolar_mask);
	if (ret)
		goto err_free_irq;
	ret = FUNC34(xadc, FUNC4(1),
		bipolar_mask >> 16);
	if (ret)
		goto err_free_irq;

	/* Disable all alarms */
	ret = FUNC33(xadc, XADC_REG_CONF1, XADC_CONF1_ALARM_MASK,
				  XADC_CONF1_ALARM_MASK);
	if (ret)
		goto err_free_irq;

	/* Set thresholds to min/max */
	for (i = 0; i < 16; i++) {
		/*
		 * Set max voltage threshold and both temperature thresholds to
		 * 0xffff, min voltage threshold to 0.
		 */
		if (i % 8 < 4 || i == 7)
			xadc->threshold[i] = 0xffff;
		else
			xadc->threshold[i] = 0;
		ret = FUNC34(xadc, FUNC5(i),
			xadc->threshold[i]);
		if (ret)
			goto err_free_irq;
	}

	/* Go to non-buffered mode */
	FUNC31(indio_dev);

	ret = FUNC14(indio_dev);
	if (ret)
		goto err_free_irq;

	FUNC25(pdev, indio_dev);

	return 0;

err_free_irq:
	FUNC13(xadc->irq, indio_dev);
	FUNC6(&xadc->zynq_unmask_work);
err_clk_disable_unprepare:
	FUNC7(xadc->clk);
err_free_samplerate_trigger:
	if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
		FUNC16(xadc->samplerate_trigger);
err_free_convst_trigger:
	if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
		FUNC16(xadc->convst_trigger);
err_triggered_buffer_cleanup:
	if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
		FUNC17(indio_dev);
err_device_free:
	FUNC20(indio_dev->channels);

	return ret;
}