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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_acpi_find_match_adapter ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 struct i2c_adapter* FUNC1 (struct device*) ; 

struct i2c_adapter *FUNC2(acpi_handle handle)
{
	struct device *dev;

	dev = FUNC0(&i2c_bus_type, NULL, handle,
			      i2c_acpi_find_match_adapter);

	return dev ? FUNC1(dev) : NULL;
}