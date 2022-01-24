#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pc87427_data {int pwm_auto_ok; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 struct pc87427_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pc87427_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct pc87427_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *devattr,
				const char *buf, size_t count)
{
	struct pc87427_data *data = FUNC0(dev);
	int nr = FUNC6(devattr)->index;
	unsigned long val;

	if (FUNC1(buf, 10, &val) < 0 || val > 2)
		return -EINVAL;
	/* Can't go to automatic mode if it isn't configured */
	if (val == 2 && !(data->pwm_auto_ok & (1 << nr)))
		return -EINVAL;

	FUNC2(&data->lock);
	FUNC4(data, nr);
	FUNC7(data, nr, FUNC5(val, data->pwm[nr]));
	FUNC3(&data->lock);

	return count;
}