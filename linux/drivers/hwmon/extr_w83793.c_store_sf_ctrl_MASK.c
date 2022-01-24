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
struct w83793_data {long* temp_fan_map; int pwm_enable; int* temp_cruise; int* tolerance; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int TEMP_CRUISE ; 
 int TEMP_FAN_MAP ; 
 int TEMP_PWM_ENABLE ; 
 int FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  W83793_REG_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (long,int /*<<< orphan*/ ,int) ; 
 struct w83793_data* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC10 (struct device_attribute*) ; 
 void* FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC10(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC9(dev);
	struct w83793_data *data = FUNC5(client);
	long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	if (nr == TEMP_FAN_MAP) {
		val = FUNC4(val, 0, 255);
		FUNC12(client, FUNC2(index), val);
		data->temp_fan_map[index] = val;
	} else if (nr == TEMP_PWM_ENABLE) {
		if (val == 2 || val == 3) {
			data->pwm_enable =
			    FUNC11(client, W83793_REG_PWM_ENABLE);
			if (val - 2)
				data->pwm_enable |= 1 << index;
			else
				data->pwm_enable &= ~(1 << index);
			FUNC12(client, W83793_REG_PWM_ENABLE,
							data->pwm_enable);
		} else {
			FUNC8(&data->update_lock);
			return -EINVAL;
		}
	} else if (nr == TEMP_CRUISE) {
		data->temp_cruise[index] =
		    FUNC11(client, FUNC1(index));
		data->temp_cruise[index] &= 0x80;
		data->temp_cruise[index] |= FUNC0(val, 0, 0x7f);

		FUNC12(client, FUNC1(index),
						data->temp_cruise[index]);
	} else {		/* TEMP_TOLERANCE */
		int i = index >> 1;
		u8 shift = (index & 0x01) ? 4 : 0;
		data->tolerance[i] =
		    FUNC11(client, FUNC3(i));

		data->tolerance[i] &= ~(0x0f << shift);
		data->tolerance[i] |= FUNC0(val, 0, 0x0f) << shift;
		FUNC12(client, FUNC3(i),
							data->tolerance[i]);
	}

	FUNC8(&data->update_lock);
	return count;
}