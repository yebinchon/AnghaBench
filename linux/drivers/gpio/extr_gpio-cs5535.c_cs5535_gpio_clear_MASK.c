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
struct cs5535_gpio_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs5535_gpio_chip*,unsigned int,unsigned int) ; 
 struct cs5535_gpio_chip cs5535_gpio_chip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(unsigned offset, unsigned int reg)
{
	struct cs5535_gpio_chip *chip = &cs5535_gpio_chip;
	unsigned long flags;

	FUNC1(&chip->lock, flags);
	FUNC0(chip, offset, reg);
	FUNC2(&chip->lock, flags);
}