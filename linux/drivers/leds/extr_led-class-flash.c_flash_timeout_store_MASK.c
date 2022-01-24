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
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int /*<<< orphan*/  led_access; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 size_t FUNC1 (char const*,int,unsigned long*) ; 
 struct led_classdev_flash* FUNC2 (struct led_classdev*) ; 
 size_t FUNC3 (struct led_classdev_flash*,unsigned long) ; 
 scalar_t__ FUNC4 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct led_classdev_flash *fled_cdev = FUNC2(led_cdev);
	unsigned long flash_timeout;
	ssize_t ret;

	FUNC5(&led_cdev->led_access);

	if (FUNC4(led_cdev)) {
		ret = -EBUSY;
		goto unlock;
	}

	ret = FUNC1(buf, 10, &flash_timeout);
	if (ret)
		goto unlock;

	ret = FUNC3(fled_cdev, flash_timeout);
	if (ret < 0)
		goto unlock;

	ret = size;
unlock:
	FUNC6(&led_cdev->led_access);
	return ret;
}