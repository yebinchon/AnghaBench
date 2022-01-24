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
struct led_classdev {int new_blink_brightness; int /*<<< orphan*/  work_flags; int /*<<< orphan*/  set_brightness_work; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_BRIGHTNESS_CHANGE ; 
 int /*<<< orphan*/  LED_BLINK_DISABLE ; 
 int /*<<< orphan*/  LED_BLINK_SW ; 
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct led_classdev *led_cdev,
			enum led_brightness brightness)
{
	/*
	 * If software blink is active, delay brightness setting
	 * until the next timer tick.
	 */
	if (FUNC3(LED_BLINK_SW, &led_cdev->work_flags)) {
		/*
		 * If we need to disable soft blinking delegate this to the
		 * work queue task to avoid problems in case we are called
		 * from hard irq context.
		 */
		if (brightness == LED_OFF) {
			FUNC2(LED_BLINK_DISABLE, &led_cdev->work_flags);
			FUNC1(&led_cdev->set_brightness_work);
		} else {
			FUNC2(LED_BLINK_BRIGHTNESS_CHANGE,
				&led_cdev->work_flags);
			led_cdev->new_blink_brightness = brightness;
		}
		return;
	}

	FUNC0(led_cdev, brightness);
}