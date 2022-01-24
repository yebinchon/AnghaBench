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
struct led_classdev {int blink_brightness; int max_brightness; unsigned long blink_delay_on; unsigned long blink_delay_off; int /*<<< orphan*/  blink_timer; int /*<<< orphan*/  work_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_SW ; 
 int LED_OFF ; 
 scalar_t__ jiffies ; 
 int FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev,
				   unsigned long delay_on,
				   unsigned long delay_off)
{
	int current_brightness;

	current_brightness = FUNC0(led_cdev);
	if (current_brightness)
		led_cdev->blink_brightness = current_brightness;
	if (!led_cdev->blink_brightness)
		led_cdev->blink_brightness = led_cdev->max_brightness;

	led_cdev->blink_delay_on = delay_on;
	led_cdev->blink_delay_off = delay_off;

	/* never on - just set to off */
	if (!delay_on) {
		FUNC1(led_cdev, LED_OFF);
		return;
	}

	/* never off - just set to brightness */
	if (!delay_off) {
		FUNC1(led_cdev,
					   led_cdev->blink_brightness);
		return;
	}

	FUNC3(LED_BLINK_SW, &led_cdev->work_flags);
	FUNC2(&led_cdev->blink_timer, jiffies + 1);
}