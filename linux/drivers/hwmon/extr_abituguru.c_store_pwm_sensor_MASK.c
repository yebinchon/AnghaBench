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
struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {unsigned long* bank1_sensors; int** pwm_settings; int** bank1_address; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_FAN_PWM ; 
 size_t ABIT_UGURU_TEMP_SENSOR ; 
 size_t EINVAL ; 
 size_t EIO ; 
 int FUNC0 (struct abituguru_data*,scalar_t__,size_t,int*,int) ; 
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
	ssize_t ret;
	unsigned long val;
	u8 orig_val;
	u8 address;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;

	if (val == 0 || val > data->bank1_sensors[ABIT_UGURU_TEMP_SENSOR])
		return -EINVAL;

	val -= 1;
	ret = count;
	FUNC3(&data->update_lock);
	orig_val = data->pwm_settings[attr->index][0];
	address = data->bank1_address[ABIT_UGURU_TEMP_SENSOR][val];
	data->pwm_settings[attr->index][0] &= 0xF0;
	data->pwm_settings[attr->index][0] |= address;
	if (data->pwm_settings[attr->index][0] != orig_val) {
		if (FUNC0(data, ABIT_UGURU_FAN_PWM + 1, attr->index,
				    data->pwm_settings[attr->index], 5) < 1) {
			data->pwm_settings[attr->index][0] = orig_val;
			ret = -EIO;
		}
	}
	FUNC4(&data->update_lock);
	return ret;
}