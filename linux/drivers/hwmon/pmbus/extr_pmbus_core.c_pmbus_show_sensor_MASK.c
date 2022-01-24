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
struct pmbus_sensor {scalar_t__ data; } ;
struct pmbus_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pmbus_data*,struct pmbus_sensor*) ; 
 struct pmbus_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct pmbus_sensor* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *devattr, char *buf)
{
	struct pmbus_data *data = FUNC1(dev);
	struct pmbus_sensor *sensor = FUNC3(devattr);

	if (sensor->data < 0)
		return sensor->data;

	return FUNC2(buf, PAGE_SIZE, "%ld\n", FUNC0(data, sensor));
}