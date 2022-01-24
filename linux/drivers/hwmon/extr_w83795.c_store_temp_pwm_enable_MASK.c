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
struct w83795_data {int* pwm_fcms; unsigned long* pwm_tfmr; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
#define  TEMP_PWM_ENABLE 129 
#define  TEMP_PWM_FAN_MAP 128 
 int /*<<< orphan*/  W83795_REG_FCMS2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 struct w83795_data* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83795_data *data = FUNC7(dev);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned long tmp;

	if (FUNC2(buf, 10, &tmp) < 0)
		return -EINVAL;

	switch (nr) {
	case TEMP_PWM_ENABLE:
		if (tmp != 3 && tmp != 4)
			return -EINVAL;
		tmp -= 3;
		FUNC3(&data->update_lock);
		data->pwm_fcms[1] &= ~(1 << index);
		data->pwm_fcms[1] |= tmp << index;
		FUNC8(client, W83795_REG_FCMS2, data->pwm_fcms[1]);
		FUNC4(&data->update_lock);
		break;
	case TEMP_PWM_FAN_MAP:
		FUNC3(&data->update_lock);
		tmp = FUNC1(tmp, 0, 0xff);
		FUNC8(client, FUNC0(index), tmp);
		data->pwm_tfmr[index] = tmp;
		FUNC4(&data->update_lock);
		break;
	}
	return count;
}