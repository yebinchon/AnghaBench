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
struct led_classdev {int flags; int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; scalar_t__ blink_delay_off; scalar_t__ blink_delay_on; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int EBUSY ; 
 int LED_SUSPENDED ; 
 int FUNC0 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct led_classdev *led_cdev,
			    enum led_brightness value)
{
	if (led_cdev->blink_delay_on || led_cdev->blink_delay_off)
		return -EBUSY;

	led_cdev->brightness = FUNC1(value, led_cdev->max_brightness);

	if (led_cdev->flags & LED_SUSPENDED)
		return 0;

	return FUNC0(led_cdev, led_cdev->brightness);
}