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
struct w83795_data {int* pwm_fcms; int* pwm_tfmr; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC1 (struct device_attribute*) ; 
 struct w83795_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC1(attr);
	struct w83795_data *data = FUNC2(dev);
	int index = sensor_attr->index;
	u8 tmp;

	/* Speed cruise mode */
	if (data->pwm_fcms[0] & (1 << index)) {
		tmp = 2;
		goto out;
	}
	/* Thermal cruise or SmartFan IV mode */
	for (tmp = 0; tmp < 6; tmp++) {
		if (data->pwm_tfmr[tmp] & (1 << index)) {
			tmp = 3;
			goto out;
		}
	}
	/* Manual mode */
	tmp = 1;

out:
	return FUNC0(buf, "%u\n", tmp);
}