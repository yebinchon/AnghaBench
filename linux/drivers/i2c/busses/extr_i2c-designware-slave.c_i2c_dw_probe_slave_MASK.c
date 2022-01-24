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
struct i2c_adapter {int retries; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct dw_i2c_dev {int (* init ) (struct dw_i2c_dev*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  disable_int; int /*<<< orphan*/  disable; int /*<<< orphan*/  cmd_complete; struct i2c_adapter adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dw_i2c_dev*) ; 
 int FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_dw_algo ; 
 int /*<<< orphan*/  i2c_dw_disable ; 
 int /*<<< orphan*/  i2c_dw_disable_int ; 
 int FUNC4 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  i2c_dw_isr_slave ; 
 int FUNC5 (struct dw_i2c_dev*) ; 
 int FUNC6 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC10 (struct dw_i2c_dev*) ; 

int FUNC11(struct dw_i2c_dev *dev)
{
	struct i2c_adapter *adap = &dev->adapter;
	int ret;

	FUNC8(&dev->cmd_complete);

	dev->init = i2c_dw_init_slave;
	dev->disable = i2c_dw_disable;
	dev->disable_int = i2c_dw_disable_int;

	ret = FUNC5(dev);
	if (ret)
		return ret;

	ret = FUNC6(dev);
	if (ret)
		return ret;

	ret = dev->init(dev);
	if (ret)
		return ret;

	FUNC9(adap->name, sizeof(adap->name),
		 "Synopsys DesignWare I2C Slave adapter");
	adap->retries = 3;
	adap->algo = &i2c_dw_algo;
	adap->dev.parent = dev->dev;
	FUNC7(adap, dev);

	ret = FUNC2(dev->dev, dev->irq, i2c_dw_isr_slave,
			       IRQF_SHARED, FUNC1(dev->dev), dev);
	if (ret) {
		FUNC0(dev->dev, "failure requesting irq %i: %d\n",
			dev->irq, ret);
		return ret;
	}

	ret = FUNC3(adap);
	if (ret)
		FUNC0(dev->dev, "failure adding adapter: %d\n", ret);

	return ret;
}