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
struct sensor_device_attribute {int index; } ;
struct it87_data {int* pwm_temp_map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct it87_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute *sensor_attr = FUNC3(attr);
	struct it87_data *data = FUNC1(dev);
	int nr = sensor_attr->index;
	int map;

	map = data->pwm_temp_map[nr];
	if (map >= 3)
		map = 0;	/* Should never happen */
	if (nr >= 3)		/* pwm channels 3..6 map to temp4..6 */
		map += 3;

	return FUNC2(buf, "%d\n", (int)FUNC0(map));
}