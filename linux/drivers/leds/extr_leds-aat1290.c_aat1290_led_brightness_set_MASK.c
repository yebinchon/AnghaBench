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
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct aat1290_led {int movie_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_en_set; int /*<<< orphan*/  gpio_fl_en; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int AAT1290_MAX_MM_CURR_PERCENT_0 ; 
 int /*<<< orphan*/  AAT1290_MM_CURRENT_RATIO_ADDR ; 
 int AAT1290_MM_TO_FL_1_92 ; 
 int /*<<< orphan*/  AAT1290_MOVIE_MODE_CONFIG_ADDR ; 
 int /*<<< orphan*/  AAT1290_MOVIE_MODE_CURRENT_ADDR ; 
 int AAT1290_MOVIE_MODE_ON ; 
 int /*<<< orphan*/  FUNC0 (struct aat1290_led*,int /*<<< orphan*/ ,int) ; 
 struct aat1290_led* FUNC1 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct led_classdev_flash* FUNC3 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct led_classdev *led_cdev,
					enum led_brightness brightness)
{
	struct led_classdev_flash *fled_cdev = FUNC3(led_cdev);
	struct aat1290_led *led = FUNC1(fled_cdev);

	FUNC4(&led->lock);

	if (brightness == 0) {
		FUNC2(led->gpio_fl_en, 0);
		FUNC2(led->gpio_en_set, 0);
		led->movie_mode = false;
	} else {
		if (!led->movie_mode) {
			FUNC0(led,
				AAT1290_MM_CURRENT_RATIO_ADDR,
				AAT1290_MM_TO_FL_1_92);
			led->movie_mode = true;
		}

		FUNC0(led, AAT1290_MOVIE_MODE_CURRENT_ADDR,
				AAT1290_MAX_MM_CURR_PERCENT_0 - brightness);
		FUNC0(led, AAT1290_MOVIE_MODE_CONFIG_ADDR,
				AAT1290_MOVIE_MODE_ON);
	}

	FUNC5(&led->lock);

	return 0;
}