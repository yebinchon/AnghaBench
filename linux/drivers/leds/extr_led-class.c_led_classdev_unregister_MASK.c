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
struct led_classdev {int flags; int /*<<< orphan*/  led_access; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; int /*<<< orphan*/  set_brightness_work; int /*<<< orphan*/  trigger_lock; scalar_t__ trigger; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LED_BRIGHT_HW_CHANGED ; 
 int /*<<< orphan*/  LED_OFF ; 
 int LED_UNREGISTERING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct led_classdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  leds_list_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct led_classdev *led_cdev)
{
	if (FUNC0(led_cdev->dev))
		return;

#ifdef CONFIG_LEDS_TRIGGERS
	down_write(&led_cdev->trigger_lock);
	if (led_cdev->trigger)
		led_trigger_set(led_cdev, NULL);
	up_write(&led_cdev->trigger_lock);
#endif

	led_cdev->flags |= LED_UNREGISTERING;

	/* Stop blinking */
	FUNC6(led_cdev);

	FUNC5(led_cdev, LED_OFF);

	FUNC3(&led_cdev->set_brightness_work);

	if (led_cdev->flags & LED_BRIGHT_HW_CHANGED)
		FUNC4(led_cdev);

	FUNC1(led_cdev->dev);

	FUNC2(&leds_list_lock);
	FUNC8(&led_cdev->node);
	FUNC10(&leds_list_lock);

	FUNC9(&led_cdev->led_access);
}