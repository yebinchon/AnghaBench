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
struct lm3601x_led {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM3601X_ENABLE_REG ; 
 int LM3601X_MODE_STROBE ; 
 struct lm3601x_led* FUNC0 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct led_classdev_flash *fled_cdev, bool *state)
{
	struct lm3601x_led *led = FUNC0(fled_cdev);
	int strobe_state;
	int ret;

	FUNC1(&led->lock);

	ret = FUNC3(led->regmap, LM3601X_ENABLE_REG, &strobe_state);
	if (ret < 0)
		goto out;

	*state = strobe_state & LM3601X_MODE_STROBE;

out:
	FUNC2(&led->lock);
	return ret;
}