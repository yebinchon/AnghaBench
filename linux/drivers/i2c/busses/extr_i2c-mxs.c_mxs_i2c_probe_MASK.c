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
struct platform_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  id; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct TYPE_2__ {scalar_t__ of_node; struct device* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int /*<<< orphan*/  nr; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct mxs_i2c_dev {scalar_t__ regs; struct i2c_adapter adapter; int /*<<< orphan*/  dmach; int /*<<< orphan*/  cmd_complete; struct device* dev; int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MXS_I2C_CTRL0_SET ; 
 int /*<<< orphan*/  MXS_I2C_CTRL0_SFTRST ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct mxs_i2c_dev* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxs_i2c_algo ; 
 int /*<<< orphan*/  mxs_i2c_dt_ids ; 
 int FUNC11 (struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  mxs_i2c_isr ; 
 int /*<<< orphan*/  mxs_i2c_quirks ; 
 int FUNC12 (struct mxs_i2c_dev*) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct of_device_id *of_id =
				FUNC13(mxs_i2c_dt_ids, &pdev->dev);
	struct device *dev = &pdev->dev;
	struct mxs_i2c_dev *i2c;
	struct i2c_adapter *adap;
	int err, irq;

	i2c = FUNC4(dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	if (of_id) {
		const struct platform_device_id *device_id = of_id->data;
		i2c->dev_type = device_id->driver_data;
	}

	i2c->regs = FUNC5(pdev, 0);
	if (FUNC0(i2c->regs))
		return FUNC1(i2c->regs);

	irq = FUNC14(pdev, 0);
	if (irq < 0)
		return irq;

	err = FUNC6(dev, irq, mxs_i2c_isr, 0, FUNC3(dev), i2c);
	if (err)
		return err;

	i2c->dev = dev;

	FUNC10(&i2c->cmd_complete);

	if (dev->of_node) {
		err = FUNC11(i2c);
		if (err)
			return err;
	}

	/* Setup the DMA */
	i2c->dmach = FUNC7(dev, "rx-tx");
	if (!i2c->dmach) {
		FUNC2(dev, "Failed to request dma\n");
		return -ENODEV;
	}

	FUNC15(pdev, i2c);

	/* Do reset to enforce correct startup after pinmuxing */
	err = FUNC12(i2c);
	if (err)
		return err;

	adap = &i2c->adapter;
	FUNC16(adap->name, "MXS I2C adapter", sizeof(adap->name));
	adap->owner = THIS_MODULE;
	adap->algo = &mxs_i2c_algo;
	adap->quirks = &mxs_i2c_quirks;
	adap->dev.parent = dev;
	adap->nr = pdev->id;
	adap->dev.of_node = pdev->dev.of_node;
	FUNC9(adap, i2c);
	err = FUNC8(adap);
	if (err) {
		FUNC17(MXS_I2C_CTRL0_SFTRST,
				i2c->regs + MXS_I2C_CTRL0_SET);
		return err;
	}

	return 0;
}