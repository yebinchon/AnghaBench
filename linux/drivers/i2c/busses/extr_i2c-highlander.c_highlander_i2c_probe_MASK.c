#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct highlander_i2c_dev {int /*<<< orphan*/  base; scalar_t__ irq; struct i2c_adapter adapter; int /*<<< orphan*/  last_read_time; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  highlander_i2c_algo ; 
 int /*<<< orphan*/  highlander_i2c_irq ; 
 int /*<<< orphan*/  FUNC3 (struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct highlander_i2c_dev*) ; 
 int FUNC5 (struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct highlander_i2c_dev*) ; 
 int FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,struct highlander_i2c_dev*) ; 
 scalar_t__ iic_force_poll ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (struct highlander_i2c_dev*) ; 
 struct highlander_i2c_dev* FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct highlander_i2c_dev*) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct highlander_i2c_dev *dev;
	struct i2c_adapter *adap;
	struct resource *res;
	int ret;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (FUNC19(!res)) {
		FUNC0(&pdev->dev, "no mem resource\n");
		return -ENODEV;
	}

	dev = FUNC12(sizeof(struct highlander_i2c_dev), GFP_KERNEL);
	if (FUNC19(!dev))
		return -ENOMEM;

	dev->base = FUNC9(res->start, FUNC17(res));
	if (FUNC19(!dev->base)) {
		ret = -ENXIO;
		goto err;
	}

	dev->dev = &pdev->dev;
	FUNC15(pdev, dev);

	dev->irq = FUNC13(pdev, 0);
	if (iic_force_poll)
		dev->irq = 0;

	if (dev->irq) {
		ret = FUNC16(dev->irq, highlander_i2c_irq, 0,
				  pdev->name, dev);
		if (FUNC19(ret))
			goto err_unmap;

		FUNC4(dev);
	} else {
		FUNC1(&pdev->dev, "no IRQ, using polling mode\n");
		FUNC3(dev);
	}

	dev->last_read_time = jiffies;	/* initial read jiffies */

	FUNC6(dev);

	adap = &dev->adapter;
	FUNC8(adap, dev);
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_HWMON;
	FUNC18(adap->name, "HL FPGA I2C adapter", sizeof(adap->name));
	adap->algo = &highlander_i2c_algo;
	adap->dev.parent = &pdev->dev;
	adap->nr = pdev->id;

	/*
	 * Reset the adapter
	 */
	ret = FUNC5(dev);
	if (FUNC19(ret)) {
		FUNC0(&pdev->dev, "controller didn't come up\n");
		goto err_free_irq;
	}

	ret = FUNC7(adap);
	if (FUNC19(ret)) {
		FUNC0(&pdev->dev, "failure adding adapter\n");
		goto err_free_irq;
	}

	return 0;

err_free_irq:
	if (dev->irq)
		FUNC2(dev->irq, dev);
err_unmap:
	FUNC10(dev->base);
err:
	FUNC11(dev);

	return ret;
}