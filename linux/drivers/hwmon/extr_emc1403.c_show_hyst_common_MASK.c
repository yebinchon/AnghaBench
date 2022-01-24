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
struct thermal_data {struct regmap* regmap; } ;
struct sensor_device_attribute {int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct thermal_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct regmap*,int,unsigned int*) ; 
 int FUNC2 (char*,char*,unsigned int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf,
				bool is_min)
{
	struct sensor_device_attribute *sda = FUNC3(attr);
	struct thermal_data *data = FUNC0(dev);
	struct regmap *regmap = data->regmap;
	unsigned int limit;
	unsigned int hyst;
	int retval;

	retval = FUNC1(regmap, sda->index, &limit);
	if (retval < 0)
		return retval;

	retval = FUNC1(regmap, 0x21, &hyst);
	if (retval < 0)
		return retval;

	return FUNC2(buf, "%d000\n", is_min ? limit + hyst : limit - hyst);
}