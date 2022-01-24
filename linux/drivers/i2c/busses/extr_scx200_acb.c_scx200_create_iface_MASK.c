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
struct TYPE_2__ {struct device* parent; } ;
struct i2c_adapter {int class; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct scx200_acb_iface {int /*<<< orphan*/  mutex; struct i2c_adapter adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,struct scx200_acb_iface*) ; 
 struct scx200_acb_iface* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scx200_acb_algorithm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*,int) ; 

__attribute__((used)) static struct scx200_acb_iface *FUNC4(const char *text,
		struct device *dev, int index)
{
	struct scx200_acb_iface *iface;
	struct i2c_adapter *adapter;

	iface = FUNC1(sizeof(*iface), GFP_KERNEL);
	if (!iface)
		return NULL;

	adapter = &iface->adapter;
	FUNC0(adapter, iface);
	FUNC3(adapter->name, sizeof(adapter->name), "%s ACB%d", text, index);
	adapter->owner = THIS_MODULE;
	adapter->algo = &scx200_acb_algorithm;
	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	adapter->dev.parent = dev;

	FUNC2(&iface->mutex);

	return iface;
}