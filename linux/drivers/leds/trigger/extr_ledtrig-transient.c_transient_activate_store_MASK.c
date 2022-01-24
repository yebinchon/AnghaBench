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
struct transient_trig_data {int activate; scalar_t__ restore_state; scalar_t__ duration; scalar_t__ state; int /*<<< orphan*/  timer; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ LED_FULL ; 
 scalar_t__ LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 size_t FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,scalar_t__) ; 
 struct transient_trig_data* FUNC3 (struct device*) ; 
 struct led_classdev* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC4(dev);
	struct transient_trig_data *transient_data =
		FUNC3(dev);
	unsigned long state;
	ssize_t ret;

	ret = FUNC1(buf, 10, &state);
	if (ret)
		return ret;

	if (state != 1 && state != 0)
		return -EINVAL;

	/* cancel the running timer */
	if (state == 0 && transient_data->activate == 1) {
		FUNC0(&transient_data->timer);
		transient_data->activate = state;
		FUNC2(led_cdev,
					transient_data->restore_state);
		return size;
	}

	/* start timer if there is no active timer */
	if (state == 1 && transient_data->activate == 0 &&
	    transient_data->duration != 0) {
		transient_data->activate = state;
		FUNC2(led_cdev, transient_data->state);
		transient_data->restore_state =
		    (transient_data->state == LED_FULL) ? LED_OFF : LED_FULL;
		FUNC5(&transient_data->timer,
			  jiffies + FUNC6(transient_data->duration));
	}

	/* state == 0 && transient_data->activate == 0
		timer is not active - just return */
	/* state == 1 && transient_data->activate == 1
		timer is already active - just return */

	return size;
}