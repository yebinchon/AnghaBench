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
struct gpio_fan_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 struct gpio_fan_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_fan_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_fan_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct gpio_fan_data *fan_data = FUNC0(dev);
	unsigned long rpm;
	int ret = count;

	if (FUNC1(buf, 10, &rpm))
		return -EINVAL;

	FUNC2(&fan_data->lock);

	if (!fan_data->pwm_enable) {
		ret = -EPERM;
		goto exit_unlock;
	}

	FUNC5(fan_data, FUNC4(fan_data, rpm));

exit_unlock:
	FUNC3(&fan_data->lock);

	return ret;
}