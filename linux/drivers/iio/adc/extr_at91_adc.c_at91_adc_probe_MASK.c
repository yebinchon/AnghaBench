#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_15__ {TYPE_2__* driver; scalar_t__ of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_11__ {TYPE_5__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct at91_adc_state {scalar_t__ irq; unsigned int sample_hold_time; void* clk; void* adc_clk; int /*<<< orphan*/  touchscreen_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq_data_avail; scalar_t__ sleep_mode; scalar_t__ low_res; TYPE_4__* registers; int /*<<< orphan*/  startup_time; TYPE_3__* caps; void* reg_base; } ;
struct TYPE_14__ {int mr_prescal_mask; int mr_startup_mask; } ;
struct TYPE_13__ {unsigned int (* calc_startup_ticks ) (int /*<<< orphan*/ ,unsigned int) ;scalar_t__ has_tsmr; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_ADC_CR ; 
 int /*<<< orphan*/  AT91_ADC_IDR ; 
 int AT91_ADC_LOWRES ; 
 int /*<<< orphan*/  AT91_ADC_MR ; 
 int FUNC0 (unsigned int) ; 
 int AT91_ADC_SHTIM ; 
 int FUNC1 (unsigned int) ; 
 int AT91_ADC_SLEEP ; 
 int FUNC2 (unsigned int) ; 
 int AT91_ADC_SWRST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  at91_adc_9x5_interrupt ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  at91_adc_info ; 
 int FUNC8 (struct at91_adc_state*,struct platform_device*) ; 
 int FUNC9 (struct at91_adc_state*,struct platform_device*) ; 
 int /*<<< orphan*/  at91_adc_rl_interrupt ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct at91_adc_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct at91_adc_state*,unsigned int) ; 
 int FUNC14 (struct at91_adc_state*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct at91_adc_state*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 unsigned int FUNC17 (void*) ; 
 int FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 void* FUNC22 (TYPE_5__*,char*) ; 
 struct iio_dev* FUNC23 (TYPE_5__*,int) ; 
 void* FUNC24 (TYPE_5__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,struct iio_dev*) ; 
 int FUNC26 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC27 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC31 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct platform_device*,struct iio_dev*) ; 
 int FUNC33 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iio_dev*) ; 
 unsigned int FUNC34 (unsigned int,int) ; 
 unsigned int FUNC35 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	unsigned int prsc, mstrclk, ticks, adc_clk, adc_clk_khz, shtim;
	int ret;
	struct iio_dev *idev;
	struct at91_adc_state *st;
	struct resource *res;
	u32 reg;

	idev = FUNC23(&pdev->dev, sizeof(struct at91_adc_state));
	if (!idev)
		return -ENOMEM;

	st = FUNC27(idev);

	if (pdev->dev.of_node)
		ret = FUNC8(st, pdev);
	else
		ret = FUNC9(st, pdev);

	if (ret) {
		FUNC20(&pdev->dev, "No platform data available.\n");
		return -EINVAL;
	}

	FUNC32(pdev, idev);

	idev->dev.parent = &pdev->dev;
	idev->name = FUNC21(&pdev->dev);
	idev->modes = INDIO_DIRECT_MODE;
	idev->info = &at91_adc_info;

	st->irq = FUNC30(pdev, 0);
	if (st->irq < 0)
		return -ENODEV;

	res = FUNC31(pdev, IORESOURCE_MEM, 0);

	st->reg_base = FUNC24(&pdev->dev, res);
	if (FUNC3(st->reg_base))
		return FUNC4(st->reg_base);


	/*
	 * Disable all IRQs before setting up the handler
	 */
	FUNC12(st, AT91_ADC_CR, AT91_ADC_SWRST);
	FUNC12(st, AT91_ADC_IDR, 0xFFFFFFFF);

	if (st->caps->has_tsmr)
		ret = FUNC33(st->irq, at91_adc_9x5_interrupt, 0,
				  pdev->dev.driver->name, idev);
	else
		ret = FUNC33(st->irq, at91_adc_rl_interrupt, 0,
				  pdev->dev.driver->name, idev);
	if (ret) {
		FUNC20(&pdev->dev, "Failed to allocate IRQ.\n");
		return ret;
	}

	st->clk = FUNC22(&pdev->dev, "adc_clk");
	if (FUNC3(st->clk)) {
		FUNC20(&pdev->dev, "Failed to get the clock.\n");
		ret = FUNC4(st->clk);
		goto error_free_irq;
	}

	ret = FUNC18(st->clk);
	if (ret) {
		FUNC20(&pdev->dev,
			"Could not prepare or enable the clock.\n");
		goto error_free_irq;
	}

	st->adc_clk = FUNC22(&pdev->dev, "adc_op_clk");
	if (FUNC3(st->adc_clk)) {
		FUNC20(&pdev->dev, "Failed to get the ADC clock.\n");
		ret = FUNC4(st->adc_clk);
		goto error_disable_clk;
	}

	ret = FUNC18(st->adc_clk);
	if (ret) {
		FUNC20(&pdev->dev,
			"Could not prepare or enable the ADC clock.\n");
		goto error_disable_clk;
	}

	/*
	 * Prescaler rate computation using the formula from the Atmel's
	 * datasheet : ADC Clock = MCK / ((Prescaler + 1) * 2), ADC Clock being
	 * specified by the electrical characteristics of the board.
	 */
	mstrclk = FUNC17(st->clk);
	adc_clk = FUNC17(st->adc_clk);
	adc_clk_khz = adc_clk / 1000;

	FUNC19(&pdev->dev, "Master clock is set as: %d Hz, adc_clk should set as: %d Hz\n",
		mstrclk, adc_clk);

	prsc = (mstrclk / (2 * adc_clk)) - 1;

	if (!st->startup_time) {
		FUNC20(&pdev->dev, "No startup time available.\n");
		ret = -EINVAL;
		goto error_disable_adc_clk;
	}
	ticks = (*st->caps->calc_startup_ticks)(st->startup_time, adc_clk_khz);

	/*
	 * a minimal Sample and Hold Time is necessary for the ADC to guarantee
	 * the best converted final value between two channels selection
	 * The formula thus is : Sample and Hold Time = (shtim + 1) / ADCClock
	 */
	if (st->sample_hold_time > 0)
		shtim = FUNC34((st->sample_hold_time * adc_clk_khz / 1000)
				 - 1, 1);
	else
		shtim = 0;

	reg = FUNC0(prsc) & st->registers->mr_prescal_mask;
	reg |= FUNC2(ticks) & st->registers->mr_startup_mask;
	if (st->low_res)
		reg |= AT91_ADC_LOWRES;
	if (st->sleep_mode)
		reg |= AT91_ADC_SLEEP;
	reg |= FUNC1(shtim) & AT91_ADC_SHTIM;
	FUNC12(st, AT91_ADC_MR, reg);

	/* Setup the ADC channels available on the board */
	ret = FUNC7(idev);
	if (ret < 0) {
		FUNC20(&pdev->dev, "Couldn't initialize the channels.\n");
		goto error_disable_adc_clk;
	}

	FUNC28(&st->wq_data_avail);
	FUNC29(&st->lock);

	/*
	 * Since touch screen will set trigger register as period trigger. So
	 * when touch screen is enabled, then we have to disable hardware
	 * trigger for classic adc.
	 */
	if (!st->touchscreen_type) {
		ret = FUNC5(idev);
		if (ret < 0) {
			FUNC20(&pdev->dev, "Couldn't initialize the buffer.\n");
			goto error_disable_adc_clk;
		}

		ret = FUNC10(idev);
		if (ret < 0) {
			FUNC20(&pdev->dev, "Couldn't setup the triggers.\n");
			FUNC6(idev);
			goto error_disable_adc_clk;
		}
	} else {
		ret = FUNC14(st, pdev);
		if (ret)
			goto error_disable_adc_clk;

		FUNC13(st, adc_clk_khz);
	}

	ret = FUNC26(idev);
	if (ret < 0) {
		FUNC20(&pdev->dev, "Couldn't register the device.\n");
		goto error_iio_device_register;
	}

	return 0;

error_iio_device_register:
	if (!st->touchscreen_type) {
		FUNC11(idev);
		FUNC6(idev);
	} else {
		FUNC15(st);
	}
error_disable_adc_clk:
	FUNC16(st->adc_clk);
error_disable_clk:
	FUNC16(st->clk);
error_free_irq:
	FUNC25(st->irq, idev);
	return ret;
}