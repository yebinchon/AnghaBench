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
struct led_netdev_data {int /*<<< orphan*/  interval; int /*<<< orphan*/  work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct led_netdev_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct led_netdev_data*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t size)
{
	struct led_netdev_data *trigger_data = FUNC3(dev);
	unsigned long value;
	int ret;

	ret = FUNC2(buf, 0, &value);
	if (ret)
		return ret;

	/* impose some basic bounds on the timer interval */
	if (value >= 5 && value <= 10000) {
		FUNC1(&trigger_data->work);

		FUNC0(&trigger_data->interval, FUNC4(value));
		FUNC5(trigger_data);	/* resets timer */
	}

	return size;
}