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
struct sensor_device_attribute {size_t index; } ;
struct max6639_data {int* temp_fault; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max6639_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct max6639_data*) ; 
 struct max6639_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *dev_attr, char *buf)
{
	struct max6639_data *data = FUNC2(dev);
	struct sensor_device_attribute *attr = FUNC4(dev_attr);

	if (FUNC0(data))
		return FUNC1(data);

	return FUNC3(buf, "%d\n", data->temp_fault[attr->index]);
}