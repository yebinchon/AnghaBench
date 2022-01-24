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
struct led_classdev {int /*<<< orphan*/  led_access; int /*<<< orphan*/  set_brightness_work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 unsigned long LED_OFF ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*,unsigned long) ; 
 scalar_t__ FUNC4 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	unsigned long state;
	ssize_t ret;

	FUNC6(&led_cdev->led_access);

	if (FUNC4(led_cdev)) {
		ret = -EBUSY;
		goto unlock;
	}

	ret = FUNC2(buf, 10, &state);
	if (ret)
		goto unlock;

	if (state == LED_OFF)
		FUNC5(led_cdev);
	FUNC3(led_cdev, state);
	FUNC1(&led_cdev->set_brightness_work);

	ret = size;
unlock:
	FUNC7(&led_cdev->led_access);
	return ret;
}