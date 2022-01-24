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
struct nasgpio_led {int /*<<< orphan*/  led_cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 struct nasgpio_led* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct nasgpio_led *amber = FUNC0("power:amber:power");
	struct nasgpio_led *blue = FUNC0("power:blue:power");

	if (!amber || !blue)
		return;
	/*
	 * LED_OFF implies disabling future blinking
	 */
	FUNC2("setting blue off and amber on\n");

	FUNC1(&blue->led_cdev, LED_OFF);
	FUNC1(&amber->led_cdev, LED_FULL);
}