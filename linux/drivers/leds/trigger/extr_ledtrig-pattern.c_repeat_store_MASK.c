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
struct pattern_trig_data {int last_repeat; int repeat; int is_indefinite; int /*<<< orphan*/  lock; scalar_t__ is_hw_pattern; int /*<<< orphan*/  timer; } ;
struct led_classdev {int /*<<< orphan*/  (* pattern_clear ) (struct led_classdev*) ;struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct led_classdev *led_cdev = FUNC1(dev);
	struct pattern_trig_data *data = led_cdev->trigger_data;
	int err, res;

	err = FUNC2(buf, 10, &res);
	if (err)
		return err;

	/* Number 0 and negative numbers except -1 are invalid. */
	if (res < -1 || res == 0)
		return -EINVAL;

	FUNC3(&data->lock);

	FUNC0(&data->timer);

	if (data->is_hw_pattern)
		led_cdev->pattern_clear(led_cdev);

	data->last_repeat = data->repeat = res;
	/* -1 means repeat indefinitely */
	if (data->repeat == -1)
		data->is_indefinite = true;
	else
		data->is_indefinite = false;

	err = FUNC5(led_cdev);

	FUNC4(&data->lock);
	return err < 0 ? err : count;
}