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
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct i2c_adapter* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, const void *data)
{
	struct i2c_adapter *adapter = FUNC1(dev);

	if (!adapter)
		return 0;

	return FUNC0(dev) == (acpi_handle)data;
}