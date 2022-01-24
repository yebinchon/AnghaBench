#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  quirks; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct clk {int dummy; } ;
struct bcm2835_i2c_dev {int /*<<< orphan*/  irq; struct i2c_adapter adapter; struct clk* regs; int /*<<< orphan*/  completion; TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2C_C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DEPRECATED ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bcm2835_i2c_algo ; 
 int /*<<< orphan*/  bcm2835_i2c_isr ; 
 struct clk* FUNC2 (TYPE_2__*,struct clk*,struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 struct clk* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC10 (TYPE_2__*,struct resource*) ; 
 struct bcm2835_i2c_dev* FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct bcm2835_i2c_dev*) ; 
 int FUNC13 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_adapter*,struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int*) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct bcm2835_i2c_dev*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct bcm2835_i2c_dev *i2c_dev;
	struct resource *mem, *irq;
	int ret;
	struct i2c_adapter *adap;
	struct clk *bus_clk;
	struct clk *mclk;
	u32 bus_clk_rate;

	i2c_dev = FUNC11(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;
	FUNC20(pdev, i2c_dev);
	i2c_dev->dev = &pdev->dev;
	FUNC15(&i2c_dev->completion);

	mem = FUNC19(pdev, IORESOURCE_MEM, 0);
	i2c_dev->regs = FUNC10(&pdev->dev, mem);
	if (FUNC0(i2c_dev->regs))
		return FUNC1(i2c_dev->regs);

	mclk = FUNC9(&pdev->dev, NULL);
	if (FUNC0(mclk)) {
		if (FUNC1(mclk) != -EPROBE_DEFER)
			FUNC6(&pdev->dev, "Could not get clock\n");
		return FUNC1(mclk);
	}

	bus_clk = FUNC2(&pdev->dev, mclk, i2c_dev);

	if (FUNC0(bus_clk)) {
		FUNC6(&pdev->dev, "Could not register clock\n");
		return FUNC1(bus_clk);
	}

	ret = FUNC18(pdev->dev.of_node, "clock-frequency",
				   &bus_clk_rate);
	if (ret < 0) {
		FUNC8(&pdev->dev,
			 "Could not read clock-frequency property\n");
		bus_clk_rate = 100000;
	}

	ret = FUNC5(bus_clk, bus_clk_rate);
	if (ret < 0) {
		FUNC6(&pdev->dev, "Could not set clock frequency\n");
		return ret;
	}

	ret = FUNC4(bus_clk);
	if (ret) {
		FUNC6(&pdev->dev, "Couldn't prepare clock");
		return ret;
	}

	irq = FUNC19(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC6(&pdev->dev, "No IRQ resource\n");
		return -ENODEV;
	}
	i2c_dev->irq = irq->start;

	ret = FUNC21(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
			  FUNC7(&pdev->dev), i2c_dev);
	if (ret) {
		FUNC6(&pdev->dev, "Could not request IRQ\n");
		return -ENODEV;
	}

	adap = &i2c_dev->adapter;
	FUNC14(adap, i2c_dev);
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DEPRECATED;
	FUNC22(adap->name, sizeof(adap->name), "bcm2835 (%s)",
		 FUNC17(pdev->dev.of_node));
	adap->algo = &bcm2835_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->dev.of_node = pdev->dev.of_node;
	adap->quirks = FUNC16(&pdev->dev);

	FUNC3(i2c_dev, BCM2835_I2C_C, 0);

	ret = FUNC13(adap);
	if (ret)
		FUNC12(i2c_dev->irq, i2c_dev);

	return ret;
}