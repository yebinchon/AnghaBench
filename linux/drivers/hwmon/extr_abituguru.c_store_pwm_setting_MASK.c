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
typedef  unsigned long u8 ;
struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {unsigned long** pwm_settings; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_FAN_PWM ; 
 size_t EINVAL ; 
 size_t EIO ; 
 unsigned long* abituguru_pwm_max ; 
 unsigned long* abituguru_pwm_min ; 
 int* abituguru_pwm_settings_multiplier ; 
 size_t FUNC0 (struct abituguru_data*,scalar_t__,size_t,unsigned long*,int) ; 
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
	u8 min;
	unsigned long val;
	ssize_t ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;

	ret = count;
	val = (val + abituguru_pwm_settings_multiplier[attr->nr] / 2) /
				abituguru_pwm_settings_multiplier[attr->nr];

	/* special case pwm1 min pwm% */
	if ((attr->index == 0) && ((attr->nr == 1) || (attr->nr == 2)))
		min = 77;
	else
		min = abituguru_pwm_min[attr->nr];

	/* this check can be done before taking the lock */
	if (val < min || val > abituguru_pwm_max[attr->nr])
		return -EINVAL;

	FUNC3(&data->update_lock);
	/* this check needs to be done after taking the lock */
	if ((attr->nr & 1) &&
			(val >= data->pwm_settings[attr->index][attr->nr + 1]))
		ret = -EINVAL;
	else if (!(attr->nr & 1) &&
			(val <= data->pwm_settings[attr->index][attr->nr - 1]))
		ret = -EINVAL;
	else if (data->pwm_settings[attr->index][attr->nr] != val) {
		u8 orig_val = data->pwm_settings[attr->index][attr->nr];
		data->pwm_settings[attr->index][attr->nr] = val;
		if (FUNC0(data, ABIT_UGURU_FAN_PWM + 1,
				attr->index, data->pwm_settings[attr->index],
				5) <= attr->nr) {
			data->pwm_settings[attr->index][attr->nr] =
				orig_val;
			ret = -EIO;
		}
	}
	FUNC4(&data->update_lock);
	return ret;
}