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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abx500_temp {int* min_alarm; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct abx500_temp* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct abx500_temp *data = FUNC0(dev);
	struct sensor_device_attribute *attr = FUNC2(devattr);

	return FUNC1(buf, "%d\n", data->min_alarm[attr->index]);
}