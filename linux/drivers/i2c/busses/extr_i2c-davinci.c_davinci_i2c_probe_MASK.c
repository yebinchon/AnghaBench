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
typedef  struct TYPE_23__   TYPE_12__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_25__ {scalar_t__ of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct i2c_bus_recovery_info {void* sda_gpiod; void* scl_gpiod; } ;
struct TYPE_24__ {scalar_t__ of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; struct i2c_bus_recovery_info* bus_recovery_info; TYPE_1__ dev; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct davinci_i2c_platform_data {int dummy; } ;
struct davinci_i2c_dev {int irq; TYPE_2__* dev; TYPE_12__* pdata; struct i2c_adapter adapter; void* base; void* clk; int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_23__ {int bus_freq; scalar_t__ gpio_recovery; scalar_t__ has_pfunc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_PM_TIMEOUT ; 
 int /*<<< orphan*/  DAVINCI_I2C_TIMEOUT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH_OPEN_DRAIN ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct i2c_bus_recovery_info davinci_i2c_gpio_recovery_info ; 
 TYPE_12__ davinci_i2c_platform_data_default ; 
 struct i2c_bus_recovery_info davinci_i2c_scl_recovery_info ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 TYPE_12__* FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_2__*,struct resource*) ; 
 void* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct davinci_i2c_dev*) ; 
 int FUNC9 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_davinci_algo ; 
 int FUNC10 (struct davinci_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct davinci_i2c_dev*) ; 
 int /*<<< orphan*/  i2c_davinci_isr ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_adapter*,struct davinci_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_12__*,TYPE_12__*,int) ; 
 scalar_t__ FUNC15 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,int*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct davinci_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct davinci_i2c_dev *dev;
	struct i2c_adapter *adap;
	struct resource *mem;
	struct i2c_bus_recovery_info *rinfo;
	int r, irq;

	irq = FUNC17(pdev, 0);
	if (irq <= 0) {
		if (!irq)
			irq = -ENXIO;
		if (irq != -EPROBE_DEFER)
			FUNC2(&pdev->dev,
				"can't get irq resource ret=%d\n", irq);
		return irq;
	}

	dev = FUNC7(&pdev->dev, sizeof(struct davinci_i2c_dev),
			GFP_KERNEL);
	if (!dev) {
		FUNC2(&pdev->dev, "Memory allocation failed\n");
		return -ENOMEM;
	}

	FUNC13(&dev->cmd_complete);

	dev->dev = &pdev->dev;
	dev->irq = irq;
	dev->pdata = FUNC3(&pdev->dev);
	FUNC19(pdev, dev);

	if (!dev->pdata && pdev->dev.of_node) {
		u32 prop;

		dev->pdata = FUNC7(&pdev->dev,
			sizeof(struct davinci_i2c_platform_data), GFP_KERNEL);
		if (!dev->pdata)
			return -ENOMEM;

		FUNC14(dev->pdata, &davinci_i2c_platform_data_default,
			sizeof(struct davinci_i2c_platform_data));
		if (!FUNC16(pdev->dev.of_node, "clock-frequency",
			&prop))
			dev->pdata->bus_freq = prop / 1000;

		dev->pdata->has_pfunc =
			FUNC15(pdev->dev.of_node,
					      "ti,has-pfunc");
	} else if (!dev->pdata) {
		dev->pdata = &davinci_i2c_platform_data_default;
	}

	dev->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);

	mem = FUNC18(pdev, IORESOURCE_MEM, 0);
	dev->base = FUNC6(&pdev->dev, mem);
	if (FUNC0(dev->base)) {
		return FUNC1(dev->base);
	}

	FUNC28(dev->dev,
					 DAVINCI_I2C_PM_TIMEOUT);
	FUNC29(dev->dev);

	FUNC22(dev->dev);

	r = FUNC23(dev->dev);
	if (r < 0) {
		FUNC2(dev->dev, "failed to runtime_get device: %d\n", r);
		FUNC26(dev->dev);
		return r;
	}

	FUNC11(dev);

	r = FUNC8(&pdev->dev, dev->irq, i2c_davinci_isr, 0,
			pdev->name, dev);
	if (r) {
		FUNC2(&pdev->dev, "failure requesting irq %i\n", dev->irq);
		goto err_unuse_clocks;
	}

	r = FUNC10(dev);
	if (r) {
		FUNC2(&pdev->dev, "failed to register cpufreq\n");
		goto err_unuse_clocks;
	}

	adap = &dev->adapter;
	FUNC12(adap, dev);
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DEPRECATED;
	FUNC30(adap->name, "DaVinci I2C adapter", sizeof(adap->name));
	adap->algo = &i2c_davinci_algo;
	adap->dev.parent = &pdev->dev;
	adap->timeout = DAVINCI_I2C_TIMEOUT;
	adap->dev.of_node = pdev->dev.of_node;

	if (dev->pdata->has_pfunc)
		adap->bus_recovery_info = &davinci_i2c_scl_recovery_info;
	else if (dev->pdata->gpio_recovery) {
		rinfo =  &davinci_i2c_gpio_recovery_info;
		adap->bus_recovery_info = rinfo;
		rinfo->scl_gpiod = FUNC5(&pdev->dev, "scl",
						  GPIOD_OUT_HIGH_OPEN_DRAIN);
		if (FUNC0(rinfo->scl_gpiod)) {
			r = FUNC1(rinfo->scl_gpiod);
			goto err_unuse_clocks;
		}
		rinfo->sda_gpiod = FUNC5(&pdev->dev, "sda", GPIOD_IN);
		if (FUNC0(rinfo->sda_gpiod)) {
			r = FUNC1(rinfo->sda_gpiod);
			goto err_unuse_clocks;
		}
	}

	adap->nr = pdev->id;
	r = FUNC9(adap);
	if (r)
		goto err_unuse_clocks;

	FUNC24(dev->dev);
	FUNC25(dev->dev);

	return 0;

err_unuse_clocks:
	FUNC21(dev->dev);
	FUNC27(dev->dev);
	FUNC20(dev->dev);

	return r;
}