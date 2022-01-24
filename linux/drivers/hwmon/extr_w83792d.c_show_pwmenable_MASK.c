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
struct w83792d_data {int* pwmenable; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,long) ; 
 struct sensor_device_attribute* FUNC1 (struct device_attribute*) ; 
 struct w83792d_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct sensor_device_attribute *sensor_attr = FUNC1(attr);
	int nr = sensor_attr->index - 1;
	struct w83792d_data *data = FUNC2(dev);
	long pwm_enable_tmp = 1;

	switch (data->pwmenable[nr]) {
	case 0:
		pwm_enable_tmp = 1; /* manual mode */
		break;
	case 1:
		pwm_enable_tmp = 3; /*thermal cruise/Smart Fan I */
		break;
	case 2:
		pwm_enable_tmp = 2; /* Smart Fan II */
		break;
	}

	return FUNC0(buf, "%ld\n", pwm_enable_tmp);
}