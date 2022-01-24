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
struct max77693_sub_led {scalar_t__ fled_id; } ;
struct max77693_led_device {scalar_t__ strobing_sub_led_id; int /*<<< orphan*/  lock; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct max77693_sub_led* FUNC0 (struct led_classdev_flash*) ; 
 int FUNC1 (struct max77693_led_device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC4 (struct max77693_sub_led*) ; 

__attribute__((used)) static int FUNC5(
				struct led_classdev_flash *fled_cdev,
				bool *state)
{
	struct max77693_sub_led *sub_led = FUNC0(fled_cdev);
	struct max77693_led_device *led = FUNC4(sub_led);
	int ret;

	if (!state)
		return -EINVAL;

	FUNC2(&led->lock);

	ret = FUNC1(led, state);

	*state = !!(*state && (led->strobing_sub_led_id == sub_led->fled_id));

	FUNC3(&led->lock);

	return ret;
}