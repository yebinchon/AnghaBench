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
typedef  int u8 ;
struct w83795_data {int* alarms; int* beeps; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ALARM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC1 (struct device_attribute*) ; 
 struct w83795_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83795_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC1(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index >> 3;
	int bit = sensor_attr->index & 0x07;
	u8 val;

	if (nr == ALARM_STATUS)
		val = (data->alarms[index] >> bit) & 1;
	else		/* BEEP_ENABLE */
		val = (data->beeps[index] >> bit) & 1;

	return FUNC0(buf, "%u\n", val);
}