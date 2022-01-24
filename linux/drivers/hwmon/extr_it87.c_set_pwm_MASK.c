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
struct sensor_device_attribute {int index; } ;
struct it87_data {int* pwm_ctrl; int* pwm_duty; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/ * IT87_REG_PWM ; 
 int /*<<< orphan*/ * IT87_REG_PWM_DUTY ; 
 struct it87_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct it87_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct it87_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct it87_data*,long) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC8(attr);
	struct it87_data *data = FUNC0(dev);
	int nr = sensor_attr->index;
	long val;

	if (FUNC4(buf, 10, &val) < 0 || val < 0 || val > 255)
		return -EINVAL;

	FUNC5(&data->update_lock);
	FUNC2(data, nr);
	if (FUNC1(data)) {
		/*
		 * If we are in automatic mode, the PWM duty cycle register
		 * is read-only so we can't write the value.
		 */
		if (data->pwm_ctrl[nr] & 0x80) {
			FUNC6(&data->update_lock);
			return -EBUSY;
		}
		data->pwm_duty[nr] = FUNC7(data, val);
		FUNC3(data, IT87_REG_PWM_DUTY[nr],
				 data->pwm_duty[nr]);
	} else {
		data->pwm_duty[nr] = FUNC7(data, val);
		/*
		 * If we are in manual mode, write the duty cycle immediately;
		 * otherwise, just store it for later use.
		 */
		if (!(data->pwm_ctrl[nr] & 0x80)) {
			data->pwm_ctrl[nr] = data->pwm_duty[nr];
			FUNC3(data, IT87_REG_PWM[nr],
					 data->pwm_ctrl[nr]);
		}
	}
	FUNC6(&data->update_lock);
	return count;
}