#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_7__ {TYPE_5__* parent; } ;
struct TYPE_8__ {int nr; TYPE_1__ dev; } ;
struct kempld_i2c_data {int was_active; TYPE_5__* dev; TYPE_2__ adap; struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CTRL_EN ; 
 int /*<<< orphan*/  KEMPLD_I2C_CTRL ; 
 int /*<<< orphan*/  bus_frequency ; 
 struct kempld_device_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 struct kempld_i2c_data* FUNC2 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int i2c_bus ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct kempld_i2c_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct kempld_device_data*) ; 
 TYPE_2__ kempld_i2c_adapter ; 
 int /*<<< orphan*/  FUNC6 (struct kempld_i2c_data*) ; 
 int FUNC7 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct kempld_i2c_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct kempld_device_data *pld = FUNC0(pdev->dev.parent);
	struct kempld_i2c_data *i2c;
	int ret;
	u8 ctrl;

	i2c = FUNC2(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	i2c->pld = pld;
	i2c->dev = &pdev->dev;
	i2c->adap = kempld_i2c_adapter;
	i2c->adap.dev.parent = i2c->dev;
	FUNC4(&i2c->adap, i2c);
	FUNC9(pdev, i2c);

	FUNC5(pld);
	ctrl = FUNC7(pld, KEMPLD_I2C_CTRL);

	if (ctrl & I2C_CTRL_EN)
		i2c->was_active = true;

	FUNC6(i2c);
	FUNC8(pld);

	/* Add I2C adapter to I2C tree */
	if (i2c_bus >= -1)
		i2c->adap.nr = i2c_bus;
	ret = FUNC3(&i2c->adap);
	if (ret)
		return ret;

	FUNC1(i2c->dev, "I2C bus initialized at %dkHz\n",
		 bus_frequency);

	return 0;
}