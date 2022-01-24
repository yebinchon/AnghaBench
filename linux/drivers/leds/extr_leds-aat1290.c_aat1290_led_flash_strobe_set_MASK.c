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
struct led_flash_setting {int /*<<< orphan*/  val; } ;
struct led_classdev {scalar_t__ brightness; } ;
struct led_classdev_flash {struct led_flash_setting timeout; struct led_classdev led_cdev; } ;
struct aat1290_led {int movie_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_en_set; int /*<<< orphan*/  gpio_fl_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aat1290_led*,int /*<<< orphan*/ ) ; 
 struct aat1290_led* FUNC1 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct led_classdev_flash *fled_cdev,
					 bool state)

{
	struct aat1290_led *led = FUNC1(fled_cdev);
	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
	struct led_flash_setting *timeout = &fled_cdev->timeout;

	FUNC3(&led->lock);

	if (state) {
		FUNC0(led, timeout->val);
		FUNC2(led->gpio_fl_en, 1);
	} else {
		FUNC2(led->gpio_fl_en, 0);
		FUNC2(led->gpio_en_set, 0);
	}

	/*
	 * To reenter movie mode after a flash event the part must be cycled
	 * off and back on to reset the movie mode and reprogrammed via the
	 * AS2Cwire. Therefore the brightness and movie_mode properties needs
	 * to be updated here to reflect the actual state.
	 */
	led_cdev->brightness = 0;
	led->movie_mode = false;

	FUNC4(&led->lock);

	return 0;
}