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
struct led_classdev {unsigned long blink_delay_on; int /*<<< orphan*/  blink_delay_off; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,unsigned long*,int /*<<< orphan*/ *) ; 
 struct led_classdev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC2(dev);
	unsigned long state;
	ssize_t ret = -EINVAL;

	ret = FUNC0(buf, 10, &state);
	if (ret)
		return ret;

	FUNC1(led_cdev, &state, &led_cdev->blink_delay_off);
	led_cdev->blink_delay_on = state;

	return size;
}