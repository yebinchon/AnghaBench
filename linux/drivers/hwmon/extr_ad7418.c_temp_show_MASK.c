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
struct ad7418_data {int /*<<< orphan*/ * temp; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 struct ad7418_data* FUNC2 (struct device*) ; 
 int FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct ad7418_data *data = FUNC2(dev);
	int ret;

	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	return FUNC3(buf, "%d\n",
		FUNC0(data->temp[attr->index]));
}