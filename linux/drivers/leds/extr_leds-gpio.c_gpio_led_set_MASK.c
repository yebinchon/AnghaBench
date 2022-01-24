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
struct led_classdev {int dummy; } ;
struct gpio_led_data {int /*<<< orphan*/  gpiod; scalar_t__ can_sleep; scalar_t__ blinking; int /*<<< orphan*/  (* platform_gpio_blink_set ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int LED_OFF ; 
 struct gpio_led_data* FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev,
	enum led_brightness value)
{
	struct gpio_led_data *led_dat = FUNC0(led_cdev);
	int level;

	if (value == LED_OFF)
		level = 0;
	else
		level = 1;

	if (led_dat->blinking) {
		led_dat->platform_gpio_blink_set(led_dat->gpiod, level,
						 NULL, NULL);
		led_dat->blinking = 0;
	} else {
		if (led_dat->can_sleep)
			FUNC2(led_dat->gpiod, level);
		else
			FUNC1(led_dat->gpiod, level);
	}
}