#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* name; int /*<<< orphan*/  groups; int /*<<< orphan*/  brightness_set; } ;
struct lm8323_pwm {int id; int running; int enabled; TYPE_1__ cdev; struct lm8323_chip* chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; scalar_t__ desired_brightness; scalar_t__ brightness; scalar_t__ fade_time; } ;
struct lm8323_chip {struct lm8323_pwm* pwm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 scalar_t__ FUNC3 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  lm8323_pwm_groups ; 
 int /*<<< orphan*/  lm8323_pwm_set_brightness ; 
 int /*<<< orphan*/  lm8323_pwm_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lm8323_chip *lm, int id, struct device *dev,
		    const char *name)
{
	struct lm8323_pwm *pwm;

	FUNC0(id > 3);

	pwm = &lm->pwm[id - 1];

	pwm->id = id;
	pwm->fade_time = 0;
	pwm->brightness = 0;
	pwm->desired_brightness = 0;
	pwm->running = false;
	pwm->enabled = false;
	FUNC1(&pwm->work, lm8323_pwm_work);
	FUNC4(&pwm->lock);
	pwm->chip = lm;

	if (name) {
		pwm->cdev.name = name;
		pwm->cdev.brightness_set = lm8323_pwm_set_brightness;
		pwm->cdev.groups = lm8323_pwm_groups;
		if (FUNC3(dev, &pwm->cdev) < 0) {
			FUNC2(dev, "couldn't register PWM %d\n", id);
			return -1;
		}
		pwm->enabled = true;
	}

	return 0;
}