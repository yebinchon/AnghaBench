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
typedef  int u16 ;
struct w83795_data {int* fan; int* fan_min; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FAN_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 
 struct w83795_data* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC2(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct w83795_data *data = FUNC3(dev);
	u16 val;

	if (nr == FAN_INPUT)
		val = data->fan[index] & 0x0fff;
	else
		val = data->fan_min[index] & 0x0fff;

	return FUNC1(buf, "%lu\n", FUNC0(val));
}