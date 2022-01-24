#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {scalar_t__ of_node; } ;
struct i2c_adapter {int nr; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  __i2c_first_dynamic_bus_num ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,char*) ; 

int FUNC7(struct i2c_adapter *adapter)
{
	struct device *dev = &adapter->dev;
	int id;

	if (dev->of_node) {
		id = FUNC6(dev->of_node, "i2c");
		if (id >= 0) {
			adapter->nr = id;
			return FUNC1(adapter);
		}
	}

	FUNC4(&core_lock);
	id = FUNC3(&i2c_adapter_idr, adapter,
		       __i2c_first_dynamic_bus_num, 0, GFP_KERNEL);
	FUNC5(&core_lock);
	if (FUNC0(id < 0, "couldn't get idr"))
		return id;

	adapter->nr = id;

	return FUNC2(adapter);
}