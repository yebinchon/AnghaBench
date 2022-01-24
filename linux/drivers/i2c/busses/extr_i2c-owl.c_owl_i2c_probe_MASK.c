#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct owl_i2c_dev {scalar_t__ bus_freq; int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OWL_I2C_DEF_SPEED_HZ ; 
 scalar_t__ OWL_I2C_MAX_SPEED_HZ ; 
 int /*<<< orphan*/  OWL_I2C_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct owl_i2c_dev* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct owl_i2c_dev*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct owl_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  owl_i2c_algorithm ; 
 int /*<<< orphan*/  owl_i2c_interrupt ; 
 int /*<<< orphan*/  owl_i2c_quirks ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct owl_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct owl_i2c_dev *i2c_dev;
	struct resource *res;
	int ret, irq;

	i2c_dev = FUNC8(dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	i2c_dev->base = FUNC7(dev, res);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		FUNC5(dev, "failed to get IRQ number\n");
		return irq;
	}

	if (FUNC13(dev->of_node, "clock-frequency",
				 &i2c_dev->bus_freq))
		i2c_dev->bus_freq = OWL_I2C_DEF_SPEED_HZ;

	/* We support only frequencies of 100k and 400k for now */
	if (i2c_dev->bus_freq != OWL_I2C_DEF_SPEED_HZ &&
	    i2c_dev->bus_freq != OWL_I2C_MAX_SPEED_HZ) {
		FUNC5(dev, "invalid clock-frequency %d\n", i2c_dev->bus_freq);
		return -EINVAL;
	}

	i2c_dev->clk = FUNC6(dev, NULL);
	if (FUNC0(i2c_dev->clk)) {
		FUNC5(dev, "failed to get clock\n");
		return FUNC1(i2c_dev->clk);
	}

	ret = FUNC4(i2c_dev->clk);
	if (ret)
		return ret;

	i2c_dev->clk_rate = FUNC3(i2c_dev->clk);
	if (!i2c_dev->clk_rate) {
		FUNC5(dev, "input clock rate should not be zero\n");
		ret = -EINVAL;
		goto disable_clk;
	}

	FUNC12(&i2c_dev->msg_complete);
	FUNC18(&i2c_dev->lock);
	i2c_dev->adap.owner = THIS_MODULE;
	i2c_dev->adap.algo = &owl_i2c_algorithm;
	i2c_dev->adap.timeout = OWL_I2C_TIMEOUT;
	i2c_dev->adap.quirks = &owl_i2c_quirks;
	i2c_dev->adap.dev.parent = dev;
	i2c_dev->adap.dev.of_node = dev->of_node;
	FUNC17(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
		 "%s", "OWL I2C adapter");
	FUNC11(&i2c_dev->adap, i2c_dev);

	FUNC16(pdev, i2c_dev);

	ret = FUNC9(dev, irq, owl_i2c_interrupt, 0, pdev->name,
			       i2c_dev);
	if (ret) {
		FUNC5(dev, "failed to request irq %d\n", irq);
		goto disable_clk;
	}

	return FUNC10(&i2c_dev->adap);

disable_clk:
	FUNC2(i2c_dev->clk);

	return ret;
}