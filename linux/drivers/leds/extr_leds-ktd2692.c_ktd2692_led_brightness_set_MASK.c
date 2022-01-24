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
struct ktd2692_context {int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  aux_gpio; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  KTD2692_LOW ; 
 int KTD2692_MODE_DISABLE ; 
 int KTD2692_MODE_MOVIE ; 
 int KTD2692_REG_MODE_BASE ; 
 int KTD2692_REG_MOVIE_CURRENT_BASE ; 
 int LED_OFF ; 
 struct ktd2692_context* FUNC0 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ktd2692_context*,int) ; 
 struct led_classdev_flash* FUNC3 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct led_classdev *led_cdev,
				       enum led_brightness brightness)
{
	struct led_classdev_flash *fled_cdev = FUNC3(led_cdev);
	struct ktd2692_context *led = FUNC0(fled_cdev);

	FUNC4(&led->lock);

	if (brightness == LED_OFF) {
		led->mode = KTD2692_MODE_DISABLE;
		FUNC1(led->aux_gpio, KTD2692_LOW);
	} else {
		FUNC2(led, brightness |
					KTD2692_REG_MOVIE_CURRENT_BASE);
		led->mode = KTD2692_MODE_MOVIE;
	}

	FUNC2(led, led->mode | KTD2692_REG_MODE_BASE);
	FUNC5(&led->lock);

	return 0;
}