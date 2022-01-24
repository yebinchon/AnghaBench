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
struct lp55xx_led {int /*<<< orphan*/  brightness; scalar_t__ chan_nr; struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ LP5521_REG_LED_PWM_BASE ; 
 int FUNC0 (struct lp55xx_chip*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct lp55xx_led *led)
{
	struct lp55xx_chip *chip = led->chip;
	int ret;

	FUNC1(&chip->lock);
	ret = FUNC0(chip, LP5521_REG_LED_PWM_BASE + led->chan_nr,
		led->brightness);
	FUNC2(&chip->lock);

	return ret;
}