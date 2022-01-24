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
struct pca9532_led {scalar_t__ state; int /*<<< orphan*/  client; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int LED_FULL ; 
 int LED_OFF ; 
 scalar_t__ PCA9532_OFF ; 
 scalar_t__ PCA9532_ON ; 
 scalar_t__ PCA9532_PWM0 ; 
 struct pca9532_led* FUNC0 (struct led_classdev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pca9532_led*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct led_classdev *led_cdev,
	enum led_brightness value)
{
	int err = 0;
	struct pca9532_led *led = FUNC0(led_cdev);

	if (value == LED_OFF)
		led->state = PCA9532_OFF;
	else if (value == LED_FULL)
		led->state = PCA9532_ON;
	else {
		led->state = PCA9532_PWM0; /* Thecus: hardcode one pwm */
		err = FUNC1(led->client, 0, 0, value);
		if (err)
			return err;
	}
	if (led->state == PCA9532_PWM0)
		FUNC3(led->client, 0);
	FUNC2(led);
	return err;
}