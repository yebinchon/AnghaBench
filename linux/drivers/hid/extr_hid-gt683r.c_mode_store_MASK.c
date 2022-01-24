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
typedef  int u8 ;
struct hid_device {int dummy; } ;
struct gt683r_led {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  mode; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GT683R_LED_AUDIO ; 
 int /*<<< orphan*/  GT683R_LED_BREATHING ; 
 int /*<<< orphan*/  GT683R_LED_NORMAL ; 
 struct gt683r_led* FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	u8 sysfs_mode;
	struct hid_device *hdev = FUNC5(dev->parent);
	struct gt683r_led *led = FUNC0(hdev);


	if (FUNC1(buf, 10, &sysfs_mode) || sysfs_mode > 2)
		return -EINVAL;

	FUNC2(&led->lock);

	if (sysfs_mode == 0)
		led->mode = GT683R_LED_NORMAL;
	else if (sysfs_mode == 1)
		led->mode = GT683R_LED_AUDIO;
	else
		led->mode = GT683R_LED_BREATHING;

	FUNC3(&led->lock);
	FUNC4(&led->work);

	return count;
}