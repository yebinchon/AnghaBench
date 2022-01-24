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
struct gpio_fan_data {int num_speed; int /*<<< orphan*/  lock; int /*<<< orphan*/  pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 int EPERM ; 
 struct gpio_fan_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_fan_data*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct gpio_fan_data *fan_data = FUNC1(dev);
	unsigned long pwm;
	int speed_index;
	int ret = count;

	if (FUNC2(buf, 10, &pwm) || pwm > 255)
		return -EINVAL;

	FUNC3(&fan_data->lock);

	if (!fan_data->pwm_enable) {
		ret = -EPERM;
		goto exit_unlock;
	}

	speed_index = FUNC0(pwm * (fan_data->num_speed - 1), 255);
	FUNC5(fan_data, speed_index);

exit_unlock:
	FUNC4(&fan_data->lock);

	return ret;
}