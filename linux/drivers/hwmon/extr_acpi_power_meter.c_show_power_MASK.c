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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_power_meter_resource {int power; int /*<<< orphan*/  lock; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct acpi_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_power_meter_resource*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			  struct device_attribute *devattr,
			  char *buf)
{
	struct acpi_device *acpi_dev = FUNC3(dev);
	struct acpi_power_meter_resource *resource = acpi_dev->driver_data;

	FUNC0(&resource->lock);
	FUNC4(resource);
	FUNC1(&resource->lock);

	return FUNC2(buf, "%llu\n", resource->power * 1000);
}