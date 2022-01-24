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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_5__ {int retries; TYPE_1__ dev; int /*<<< orphan*/  nr; struct sprd_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct sprd_i2c {scalar_t__ irq; int bus_freq; int /*<<< orphan*/  clk; struct device* dev; TYPE_2__ adap; int /*<<< orphan*/  complete; int /*<<< orphan*/  base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRD_I2C_PM_TIMEOUT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct sprd_i2c* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sprd_i2c*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  sprd_i2c_algo ; 
 int FUNC25 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC26 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  sprd_i2c_isr ; 
 int /*<<< orphan*/  sprd_i2c_isr_thread ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sprd_i2c *i2c_dev;
	u32 prop;
	int ret;

	pdev->id = FUNC11(dev->of_node, "i2c");

	i2c_dev = FUNC5(dev, sizeof(struct sprd_i2c), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	i2c_dev->base = FUNC6(pdev, 0);
	if (FUNC0(i2c_dev->base))
		return FUNC1(i2c_dev->base);

	i2c_dev->irq = FUNC13(pdev, 0);
	if (i2c_dev->irq < 0) {
		FUNC4(&pdev->dev, "failed to get irq resource\n");
		return i2c_dev->irq;
	}

	FUNC9(&i2c_dev->adap, i2c_dev);
	FUNC10(&i2c_dev->complete);
	FUNC24(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
		 "%s", "sprd-i2c");

	i2c_dev->bus_freq = 100000;
	i2c_dev->adap.owner = THIS_MODULE;
	i2c_dev->dev = dev;
	i2c_dev->adap.retries = 3;
	i2c_dev->adap.algo = &sprd_i2c_algo;
	i2c_dev->adap.algo_data = i2c_dev;
	i2c_dev->adap.dev.parent = dev;
	i2c_dev->adap.nr = pdev->id;
	i2c_dev->adap.dev.of_node = dev->of_node;

	if (!FUNC12(dev->of_node, "clock-frequency", &prop))
		i2c_dev->bus_freq = prop;

	/* We only support 100k and 400k now, otherwise will return error. */
	if (i2c_dev->bus_freq != 100000 && i2c_dev->bus_freq != 400000)
		return -EINVAL;

	ret = FUNC25(i2c_dev);
	if (ret)
		return ret;

	FUNC14(pdev, i2c_dev);

	ret = FUNC3(i2c_dev->clk);
	if (ret)
		return ret;

	FUNC26(i2c_dev);

	FUNC22(i2c_dev->dev, SPRD_I2C_PM_TIMEOUT);
	FUNC23(i2c_dev->dev);
	FUNC21(i2c_dev->dev);
	FUNC16(i2c_dev->dev);

	ret = FUNC17(i2c_dev->dev);
	if (ret < 0)
		goto err_rpm_put;

	ret = FUNC7(dev, i2c_dev->irq,
		sprd_i2c_isr, sprd_i2c_isr_thread,
		IRQF_NO_SUSPEND | IRQF_ONESHOT,
		pdev->name, i2c_dev);
	if (ret) {
		FUNC4(&pdev->dev, "failed to request irq %d\n", i2c_dev->irq);
		goto err_rpm_put;
	}

	ret = FUNC8(&i2c_dev->adap);
	if (ret) {
		FUNC4(&pdev->dev, "add adapter failed\n");
		goto err_rpm_put;
	}

	FUNC18(i2c_dev->dev);
	FUNC19(i2c_dev->dev);
	return 0;

err_rpm_put:
	FUNC20(i2c_dev->dev);
	FUNC15(i2c_dev->dev);
	FUNC2(i2c_dev->clk);
	return ret;
}