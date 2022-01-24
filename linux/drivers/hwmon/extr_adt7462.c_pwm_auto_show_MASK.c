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
struct adt7462_data {int* pwm_cfg; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int ADT7462_PWM_CHANNEL_SHIFT ; 
 struct adt7462_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			     struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(devattr);
	struct adt7462_data *data = FUNC0(dev);
	int cfg = data->pwm_cfg[attr->index] >> ADT7462_PWM_CHANNEL_SHIFT;

	switch (cfg) {
	case 4: /* off */
		return FUNC1(buf, "0\n");
	case 7: /* manual */
		return FUNC1(buf, "1\n");
	default: /* automatic */
		return FUNC1(buf, "2\n");
	}
}