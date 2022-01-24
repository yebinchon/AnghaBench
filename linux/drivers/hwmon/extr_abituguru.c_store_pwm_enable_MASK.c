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
typedef  scalar_t__ u8 ;
struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {scalar_t__** pwm_settings; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_FAN_PWM ; 
 scalar_t__ ABIT_UGURU_FAN_PWM_ENABLE ; 
 size_t EINVAL ; 
 size_t EIO ; 
 int FUNC0 (struct abituguru_data*,scalar_t__,size_t,scalar_t__*,int) ; 
 struct abituguru_data* FUNC1 (struct device*) ; 
 size_t FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *attr = FUNC5(devattr);
	struct abituguru_data *data = FUNC1(dev);
	u8 orig_val;
	ssize_t ret;
	unsigned long user_val;

	ret = FUNC2(buf, 10, &user_val);
	if (ret)
		return ret;

	ret = count;
	FUNC3(&data->update_lock);
	orig_val = data->pwm_settings[attr->index][0];
	switch (user_val) {
	case 0:
		data->pwm_settings[attr->index][0] &=
			~ABIT_UGURU_FAN_PWM_ENABLE;
		break;
	case 2:
		data->pwm_settings[attr->index][0] |= ABIT_UGURU_FAN_PWM_ENABLE;
		break;
	default:
		ret = -EINVAL;
	}
	if ((data->pwm_settings[attr->index][0] != orig_val) &&
			(FUNC0(data, ABIT_UGURU_FAN_PWM + 1,
			attr->index, data->pwm_settings[attr->index],
			5) < 1)) {
		data->pwm_settings[attr->index][0] = orig_val;
		ret = -EIO;
	}
	FUNC4(&data->update_lock);
	return ret;
}