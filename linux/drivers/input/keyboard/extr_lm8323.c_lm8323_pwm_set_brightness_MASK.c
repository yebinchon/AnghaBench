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
struct lm8323_pwm {int desired_brightness; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct lm8323_chip* chip; } ;
struct lm8323_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_suspend; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 struct lm8323_pwm* FUNC0 (struct led_classdev*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct led_classdev *led_cdev,
				      enum led_brightness brightness)
{
	struct lm8323_pwm *pwm = FUNC0(led_cdev);
	struct lm8323_chip *lm = pwm->chip;

	FUNC4(&pwm->lock);
	pwm->desired_brightness = brightness;
	FUNC5(&pwm->lock);

	if (FUNC1()) {
		FUNC6(&pwm->work);
	} else {
		/*
		 * Schedule PWM work as usual unless we are going into suspend
		 */
		FUNC4(&lm->lock);
		if (FUNC2(!lm->pm_suspend))
			FUNC6(&pwm->work);
		else
			FUNC3(&pwm->work);
		FUNC5(&lm->lock);
	}
}