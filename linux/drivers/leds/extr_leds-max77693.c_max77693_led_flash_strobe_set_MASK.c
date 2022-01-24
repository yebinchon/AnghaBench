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
struct max77693_sub_led {int fled_id; scalar_t__ flash_timeout; } ;
struct max77693_led_device {scalar_t__ current_flash_timeout; int strobing_sub_led_id; int /*<<< orphan*/  lock; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct max77693_sub_led* FUNC1 (struct led_classdev_flash*) ; 
 int FUNC2 (struct max77693_led_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct max77693_led_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct max77693_sub_led*) ; 
 int FUNC5 (struct max77693_led_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC8 (struct max77693_sub_led*) ; 

__attribute__((used)) static int FUNC9(
				struct led_classdev_flash *fled_cdev,
				bool state)
{
	struct max77693_sub_led *sub_led = FUNC1(fled_cdev);
	struct max77693_led_device *led = FUNC8(sub_led);
	int fled_id = sub_led->fled_id;
	int ret;

	FUNC6(&led->lock);

	if (!state) {
		ret = FUNC3(led, FUNC0(fled_id));
		goto unlock;
	}

	if (sub_led->flash_timeout != led->current_flash_timeout) {
		ret = FUNC5(led, sub_led->flash_timeout);
		if (ret < 0)
			goto unlock;
	}

	led->strobing_sub_led_id = fled_id;

	ret = FUNC2(led, FUNC0(fled_id));
	if (ret < 0)
		goto unlock;

	ret = FUNC4(sub_led);

unlock:
	FUNC7(&led->lock);
	return ret;
}