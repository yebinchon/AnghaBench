#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct dln2_platform_data {int port; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; TYPE_3__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct dln2_i2c {int port; TYPE_1__ adapter; struct platform_device* pdev; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DLN2_I2C_BUF_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct dln2_platform_data* FUNC3 (struct device*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dln2_i2c* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dln2_i2c*,int) ; 
 int /*<<< orphan*/  dln2_i2c_quirks ; 
 int /*<<< orphan*/  dln2_i2c_usb_algorithm ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct dln2_i2c*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct dln2_i2c*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	int ret;
	struct dln2_i2c *dln2;
	struct device *dev = &pdev->dev;
	struct dln2_platform_data *pdata = FUNC3(&pdev->dev);

	dln2 = FUNC6(dev, sizeof(*dln2), GFP_KERNEL);
	if (!dln2)
		return -ENOMEM;

	dln2->buf = FUNC5(dev, DLN2_I2C_BUF_SIZE, GFP_KERNEL);
	if (!dln2->buf)
		return -ENOMEM;

	dln2->pdev = pdev;
	dln2->port = pdata->port;

	/* setup i2c adapter description */
	dln2->adapter.owner = THIS_MODULE;
	dln2->adapter.class = I2C_CLASS_HWMON;
	dln2->adapter.algo = &dln2_i2c_usb_algorithm;
	dln2->adapter.quirks = &dln2_i2c_quirks;
	dln2->adapter.dev.parent = dev;
	FUNC1(&dln2->adapter.dev, FUNC0(&pdev->dev));
	dln2->adapter.dev.of_node = dev->of_node;
	FUNC9(&dln2->adapter, dln2);
	FUNC11(dln2->adapter.name, sizeof(dln2->adapter.name), "%s-%s-%d",
		 "dln2-i2c", FUNC4(pdev->dev.parent), dln2->port);

	FUNC10(pdev, dln2);

	/* initialize the i2c interface */
	ret = FUNC7(dln2, true);
	if (ret < 0) {
		FUNC2(dev, "failed to initialize adapter: %d\n", ret);
		return ret;
	}

	/* and finally attach to i2c layer */
	ret = FUNC8(&dln2->adapter);
	if (ret < 0)
		goto out_disable;

	return 0;

out_disable:
	FUNC7(dln2, false);

	return ret;
}