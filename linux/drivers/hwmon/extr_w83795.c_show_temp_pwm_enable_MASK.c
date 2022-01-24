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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  TEMP_PWM_ENABLE 129 
#define  TEMP_PWM_FAN_MAP 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC1 (struct device_attribute*) ; 
 struct w83795_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct w83795_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC1(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	u8 tmp = 0xff;

	switch (nr) {
	case TEMP_PWM_ENABLE:
		tmp = (data->pwm_fcms[1] >> index) & 1;
		if (tmp)
			tmp = 4;
		else
			tmp = 3;
		break;
	case TEMP_PWM_FAN_MAP:
		tmp = data->pwm_tfmr[index];
		break;
	}

	return FUNC0(buf, "%u\n", tmp);
}