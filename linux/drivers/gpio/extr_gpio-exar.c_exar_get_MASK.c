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
struct gpio_chip {int dummy; } ;
struct exar_gpio_chip {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 struct exar_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int reg)
{
	struct exar_gpio_chip *exar_gpio = FUNC0(chip);
	int value;

	FUNC1(&exar_gpio->lock);
	value = FUNC3(exar_gpio->regs + reg);
	FUNC2(&exar_gpio->lock);

	return value;
}