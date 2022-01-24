#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct i2c_dev {TYPE_1__ cdev; struct i2c_dev* dev; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_MAJOR ; 
 scalar_t__ FUNC0 (struct i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_dev*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct i2c_dev* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct i2c_dev* FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_adapter_type ; 
 int /*<<< orphan*/  i2c_dev_class ; 
 int /*<<< orphan*/  i2cdev_fops ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_dev*) ; 
 struct i2c_adapter* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, void *dummy)
{
	struct i2c_adapter *adap;
	struct i2c_dev *i2c_dev;
	int res;

	if (dev->type != &i2c_adapter_type)
		return 0;
	adap = FUNC10(dev);

	i2c_dev = FUNC7(adap);
	if (FUNC0(i2c_dev))
		return FUNC2(i2c_dev);

	FUNC5(&i2c_dev->cdev, &i2cdev_fops);
	i2c_dev->cdev.owner = THIS_MODULE;
	res = FUNC3(&i2c_dev->cdev, FUNC1(I2C_MAJOR, adap->nr), 1);
	if (res)
		goto error_cdev;

	/* register this i2c device with the driver core */
	i2c_dev->dev = FUNC6(i2c_dev_class, &adap->dev,
				     FUNC1(I2C_MAJOR, adap->nr), NULL,
				     "i2c-%d", adap->nr);
	if (FUNC0(i2c_dev->dev)) {
		res = FUNC2(i2c_dev->dev);
		goto error;
	}

	FUNC8("i2c-dev: adapter [%s] registered as minor %d\n",
		 adap->name, adap->nr);
	return 0;
error:
	FUNC4(&i2c_dev->cdev);
error_cdev:
	FUNC9(i2c_dev);
	return res;
}