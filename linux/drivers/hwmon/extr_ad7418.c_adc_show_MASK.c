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
struct ad7418_data {int* in; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 struct ad7418_data* FUNC1 (struct device*) ; 
 int FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *devattr,
			char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct ad7418_data *data = FUNC1(dev);
	int ret;

	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	return FUNC2(buf, "%d\n",
		((data->in[attr->index] >> 6) * 2500 + 512) / 1024);
}