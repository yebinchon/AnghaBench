#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stm32f7_i2c_setup {int rise_time; int fall_time; } ;
struct TYPE_24__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int timeout; int retries; int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct stm32f7_i2c_dev {struct reset_control* clk; TYPE_2__* dev; int /*<<< orphan*/  dma; int /*<<< orphan*/  complete; struct i2c_adapter adap; struct stm32f7_i2c_setup setup; void* speed; struct reset_control* base; } ;
struct resource {scalar_t__ start; } ;
struct reset_control {int dummy; } ;
struct TYPE_25__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  STM32F7_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  STM32F7_I2C_RXDR ; 
 int /*<<< orphan*/  STM32F7_I2C_TXDR ; 
 void* STM32_I2C_SPEED_FAST ; 
 void* STM32_I2C_SPEED_FAST_PLUS ; 
 void* STM32_I2C_SPEED_STANDARD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct reset_control*) ; 
 int FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,char*,int*) ; 
 struct reset_control* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct reset_control* FUNC8 (TYPE_2__*,struct resource*) ; 
 struct stm32f7_i2c_dev* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32f7_i2c_dev*) ; 
 int FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32f7_i2c_dev*) ; 
 struct reset_control* FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_adapter*,struct stm32f7_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct stm32f7_i2c_setup* FUNC16 (TYPE_2__*) ; 
 int FUNC17 (struct platform_device*,int) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct stm32f7_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC32 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32f7_i2c_algo ; 
 int /*<<< orphan*/  FUNC35 (struct stm32f7_i2c_dev*) ; 
 int /*<<< orphan*/  stm32f7_i2c_isr_error ; 
 int /*<<< orphan*/  stm32f7_i2c_isr_event ; 
 int /*<<< orphan*/  stm32f7_i2c_isr_event_thread ; 
 int FUNC36 (struct platform_device*,struct stm32f7_i2c_dev*) ; 
 int FUNC37 (struct stm32f7_i2c_dev*,struct stm32f7_i2c_setup*) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 

__attribute__((used)) static int FUNC39(struct platform_device *pdev)
{
	struct stm32f7_i2c_dev *i2c_dev;
	const struct stm32f7_i2c_setup *setup;
	struct resource *res;
	u32 clk_rate, rise_time, fall_time;
	struct i2c_adapter *adap;
	struct reset_control *rst;
	dma_addr_t phy_addr;
	int irq_error, irq_event, ret;

	i2c_dev = FUNC9(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	i2c_dev->base = FUNC8(&pdev->dev, res);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);
	phy_addr = (dma_addr_t)res->start;

	irq_event = FUNC17(pdev, 0);
	if (irq_event <= 0) {
		if (irq_event != -EPROBE_DEFER)
			FUNC4(&pdev->dev, "Failed to get IRQ event: %d\n",
				irq_event);
		return irq_event ? : -ENOENT;
	}

	irq_error = FUNC17(pdev, 1);
	if (irq_error <= 0) {
		if (irq_error != -EPROBE_DEFER)
			FUNC4(&pdev->dev, "Failed to get IRQ error: %d\n",
				irq_error);
		return irq_error ? : -ENOENT;
	}

	i2c_dev->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(i2c_dev->clk)) {
		FUNC4(&pdev->dev, "Error: Missing controller clock\n");
		return FUNC1(i2c_dev->clk);
	}

	ret = FUNC3(i2c_dev->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to prepare_enable clock\n");
		return ret;
	}

	i2c_dev->speed = STM32_I2C_SPEED_STANDARD;
	ret = FUNC6(&pdev->dev, "clock-frequency",
				       &clk_rate);
	if (!ret && clk_rate >= 1000000) {
		i2c_dev->speed = STM32_I2C_SPEED_FAST_PLUS;
		ret = FUNC36(pdev, i2c_dev);
		if (ret)
			goto clk_free;
	} else if (!ret && clk_rate >= 400000) {
		i2c_dev->speed = STM32_I2C_SPEED_FAST;
	} else if (!ret && clk_rate >= 100000) {
		i2c_dev->speed = STM32_I2C_SPEED_STANDARD;
	}

	rst = FUNC12(&pdev->dev, NULL);
	if (FUNC0(rst)) {
		FUNC4(&pdev->dev, "Error: Missing controller reset\n");
		ret = FUNC1(rst);
		goto clk_free;
	}
	FUNC31(rst);
	FUNC38(2);
	FUNC32(rst);

	i2c_dev->dev = &pdev->dev;

	ret = FUNC11(&pdev->dev, irq_event,
					stm32f7_i2c_isr_event,
					stm32f7_i2c_isr_event_thread,
					IRQF_ONESHOT,
					pdev->name, i2c_dev);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to request irq event %i\n",
			irq_event);
		goto clk_free;
	}

	ret = FUNC10(&pdev->dev, irq_error, stm32f7_i2c_isr_error, 0,
			       pdev->name, i2c_dev);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to request irq error %i\n",
			irq_error);
		goto clk_free;
	}

	setup = FUNC16(&pdev->dev);
	if (!setup) {
		FUNC4(&pdev->dev, "Can't get device data\n");
		ret = -ENODEV;
		goto clk_free;
	}
	i2c_dev->setup = *setup;

	ret = FUNC6(i2c_dev->dev, "i2c-scl-rising-time-ns",
				       &rise_time);
	if (!ret)
		i2c_dev->setup.rise_time = rise_time;

	ret = FUNC6(i2c_dev->dev, "i2c-scl-falling-time-ns",
				       &fall_time);
	if (!ret)
		i2c_dev->setup.fall_time = fall_time;

	ret = FUNC37(i2c_dev, &i2c_dev->setup);
	if (ret)
		goto clk_free;

	adap = &i2c_dev->adap;
	FUNC14(adap, i2c_dev);
	FUNC33(adap->name, sizeof(adap->name), "STM32F7 I2C(%pa)",
		 &res->start);
	adap->owner = THIS_MODULE;
	adap->timeout = 2 * HZ;
	adap->retries = 3;
	adap->algo = &stm32f7_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;

	FUNC15(&i2c_dev->complete);

	/* Init DMA config if supported */
	i2c_dev->dma = FUNC34(i2c_dev->dev, phy_addr,
					     STM32F7_I2C_TXDR,
					     STM32F7_I2C_RXDR);

	FUNC19(pdev, i2c_dev);

	FUNC28(i2c_dev->dev,
					 STM32F7_AUTOSUSPEND_DELAY);
	FUNC30(i2c_dev->dev);
	FUNC27(i2c_dev->dev);
	FUNC22(i2c_dev->dev);

	FUNC23(&pdev->dev);

	FUNC35(i2c_dev);

	ret = FUNC13(adap);
	if (ret)
		goto pm_disable;

	FUNC5(i2c_dev->dev, "STM32F7 I2C-%d bus adapter\n", adap->nr);

	FUNC24(i2c_dev->dev);
	FUNC25(i2c_dev->dev);

	return 0;

pm_disable:
	FUNC26(i2c_dev->dev);
	FUNC20(i2c_dev->dev);
	FUNC29(i2c_dev->dev);
	FUNC21(i2c_dev->dev);

clk_free:
	FUNC2(i2c_dev->clk);

	return ret;
}