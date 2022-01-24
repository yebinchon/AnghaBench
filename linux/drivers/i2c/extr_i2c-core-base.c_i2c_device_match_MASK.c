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
struct i2c_driver {int /*<<< orphan*/  id_table; } ;
struct i2c_client {int dummy; } ;
struct device_driver {int /*<<< orphan*/  of_match_table; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,struct device_driver*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct i2c_client*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct i2c_client*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 struct i2c_driver* FUNC4 (struct device_driver*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_driver *drv)
{
	struct i2c_client	*client = FUNC3(dev);
	struct i2c_driver	*driver;


	/* Attempt an OF style match */
	if (FUNC2(drv->of_match_table, client))
		return 1;

	/* Then ACPI style match */
	if (FUNC0(dev, drv))
		return 1;

	driver = FUNC4(drv);

	/* Finally an I2C match */
	if (FUNC1(driver->id_table, client))
		return 1;

	return 0;
}