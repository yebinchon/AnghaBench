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
struct platform_device {int dummy; } ;
struct max77693_sub_led {int /*<<< orphan*/  fled_cdev; int /*<<< orphan*/  v4l2_flash; } ;
struct max77693_led_device {int /*<<< orphan*/  lock; scalar_t__ iout_joint; struct max77693_sub_led* sub_leds; } ;

/* Variables and functions */
 size_t FLED1 ; 
 size_t FLED2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct max77693_led_device*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct max77693_led_device *led = FUNC3(pdev);
	struct max77693_sub_led *sub_leds = led->sub_leds;

	if (led->iout_joint || FUNC1(led, FLED1)) {
		FUNC4(sub_leds[FLED1].v4l2_flash);
		FUNC0(&sub_leds[FLED1].fled_cdev);
	}

	if (!led->iout_joint && FUNC1(led, FLED2)) {
		FUNC4(sub_leds[FLED2].v4l2_flash);
		FUNC0(&sub_leds[FLED2].fled_cdev);
	}

	FUNC2(&led->lock);

	return 0;
}