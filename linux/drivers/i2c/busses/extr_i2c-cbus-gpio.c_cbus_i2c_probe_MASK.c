#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; int /*<<< orphan*/  timeout; int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct cbus_host {TYPE_2__* dev; int /*<<< orphan*/  lock; void* sel; void* dat; void* clk; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  cbus_i2c_algo ; 
 void* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,struct cbus_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct i2c_adapter *adapter;
	struct cbus_host *chost;

	adapter = FUNC3(&pdev->dev, sizeof(struct i2c_adapter),
			       GFP_KERNEL);
	if (!adapter)
		return -ENOMEM;

	chost = FUNC3(&pdev->dev, sizeof(*chost), GFP_KERNEL);
	if (!chost)
		return -ENOMEM;

	if (FUNC4(&pdev->dev, NULL) != 3)
		return -ENODEV;
	chost->clk = FUNC2(&pdev->dev, NULL, 0, GPIOD_OUT_LOW);
	if (FUNC0(chost->clk))
		return FUNC1(chost->clk);
	chost->dat = FUNC2(&pdev->dev, NULL, 1, GPIOD_IN);
	if (FUNC0(chost->dat))
		return FUNC1(chost->dat);
	chost->sel = FUNC2(&pdev->dev, NULL, 2, GPIOD_OUT_HIGH);
	if (FUNC0(chost->sel))
		return FUNC1(chost->sel);
	FUNC5(chost->clk, "CBUS clk");
	FUNC5(chost->dat, "CBUS dat");
	FUNC5(chost->sel, "CBUS sel");

	adapter->owner		= THIS_MODULE;
	adapter->class		= I2C_CLASS_HWMON;
	adapter->dev.parent	= &pdev->dev;
	adapter->dev.of_node	= pdev->dev.of_node;
	adapter->nr		= pdev->id;
	adapter->timeout	= HZ;
	adapter->algo		= &cbus_i2c_algo;
	FUNC10(adapter->name, "CBUS I2C adapter", sizeof(adapter->name));

	FUNC9(&chost->lock);
	chost->dev = &pdev->dev;

	FUNC7(adapter, chost);
	FUNC8(pdev, adapter);

	return FUNC6(adapter);
}