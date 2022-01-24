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
struct led_classdev {int delayed_set_value; int /*<<< orphan*/  set_brightness_work; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct led_classdev *led_cdev,
			      enum led_brightness value)
{
	/* Use brightness_set op if available, it is guaranteed not to sleep */
	if (!FUNC0(led_cdev, value))
		return;

	/* If brightness setting can sleep, delegate it to a work queue task */
	led_cdev->delayed_set_value = value;
	FUNC1(&led_cdev->set_brightness_work);
}