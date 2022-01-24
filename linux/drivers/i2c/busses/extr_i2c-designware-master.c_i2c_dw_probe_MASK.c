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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {int retries; TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct dw_i2c_dev {int (* init ) (struct dw_i2c_dev*) ;int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  (* disable_int ) (struct dw_i2c_dev*) ;int /*<<< orphan*/  disable; int /*<<< orphan*/  cmd_complete; struct i2c_adapter adapter; } ;

/* Variables and functions */
 int ACCESS_NO_IRQ_SUSPEND ; 
 unsigned long IRQF_COND_SUSPEND ; 
 unsigned long IRQF_NO_SUSPEND ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct dw_i2c_dev*) ; 
 int FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_dw_algo ; 
 int /*<<< orphan*/  i2c_dw_disable ; 
 int /*<<< orphan*/  FUNC4 (struct dw_i2c_dev*) ; 
 int FUNC5 (struct dw_i2c_dev*) ; 
 int FUNC6 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  i2c_dw_isr ; 
 int /*<<< orphan*/  i2c_dw_quirks ; 
 int FUNC7 (struct dw_i2c_dev*) ; 
 int FUNC8 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC14 (struct dw_i2c_dev*) ; 

int FUNC15(struct dw_i2c_dev *dev)
{
	struct i2c_adapter *adap = &dev->adapter;
	unsigned long irq_flags;
	int ret;

	FUNC10(&dev->cmd_complete);

	dev->init = i2c_dw_init_master;
	dev->disable = i2c_dw_disable;
	dev->disable_int = i2c_dw_disable_int;

	ret = FUNC7(dev);
	if (ret)
		return ret;

	ret = FUNC8(dev);
	if (ret)
		return ret;

	ret = dev->init(dev);
	if (ret)
		return ret;

	FUNC13(adap->name, sizeof(adap->name),
		 "Synopsys DesignWare I2C adapter");
	adap->retries = 3;
	adap->algo = &i2c_dw_algo;
	adap->quirks = &i2c_dw_quirks;
	adap->dev.parent = dev->dev;
	FUNC9(adap, dev);

	if (dev->flags & ACCESS_NO_IRQ_SUSPEND) {
		irq_flags = IRQF_NO_SUSPEND;
	} else {
		irq_flags = IRQF_SHARED | IRQF_COND_SUSPEND;
	}

	FUNC4(dev);
	ret = FUNC2(dev->dev, dev->irq, i2c_dw_isr, irq_flags,
			       FUNC1(dev->dev), dev);
	if (ret) {
		FUNC0(dev->dev, "failure requesting irq %i: %d\n",
			dev->irq, ret);
		return ret;
	}

	ret = FUNC6(dev);
	if (ret)
		return ret;

	/*
	 * Increment PM usage count during adapter registration in order to
	 * avoid possible spurious runtime suspend when adapter device is
	 * registered to the device core and immediate resume in case bus has
	 * registered I2C slaves that do I2C transfers in their probe.
	 */
	FUNC11(dev->dev);
	ret = FUNC3(adap);
	if (ret)
		FUNC0(dev->dev, "failure adding adapter: %d\n", ret);
	FUNC12(dev->dev);

	return ret;
}