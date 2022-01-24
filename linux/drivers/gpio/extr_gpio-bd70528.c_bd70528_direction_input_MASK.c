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
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_GPIO_OUT_DISABLE ; 
 int /*<<< orphan*/  BD70528_GPIO_OUT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct bd70528_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct bd70528_gpio *bdgpio = FUNC1(chip);

	/* Do we need to do something to IRQs here? */
	return FUNC2(bdgpio->chip.regmap, FUNC0(offset),
				 BD70528_GPIO_OUT_EN_MASK,
				 BD70528_GPIO_OUT_DISABLE);
}