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
struct lp55xx_chip {int dummy; } ;

/* Variables and functions */
 int LP5523_MAX_LEDS ; 
 scalar_t__ LP5523_REG_LED_PWM_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct lp55xx_chip*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct lp55xx_chip *chip)
{
	int i;

	for (i = 0; i < LP5523_MAX_LEDS; i++)
		FUNC0(chip, LP5523_REG_LED_PWM_BASE + i, 0);
}