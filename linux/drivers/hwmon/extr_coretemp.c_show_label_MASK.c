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
struct temp_data {int cpu_core_id; scalar_t__ is_pkg_data; } ;
struct sensor_device_attribute {size_t index; } ;
struct platform_data {int pkg_id; struct temp_data** core_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct platform_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(devattr);
	struct platform_data *pdata = FUNC0(dev);
	struct temp_data *tdata = pdata->core_data[attr->index];

	if (tdata->is_pkg_data)
		return FUNC1(buf, "Package id %u\n", pdata->pkg_id);

	return FUNC1(buf, "Core %u\n", tdata->cpu_core_id);
}