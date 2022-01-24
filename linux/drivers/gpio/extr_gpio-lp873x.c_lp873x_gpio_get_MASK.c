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
struct lp873x_gpio {TYPE_1__* lp873; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int BITS_PER_GPO ; 
 int /*<<< orphan*/  LP873X_REG_GPO_CTRL ; 
 struct lp873x_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct lp873x_gpio *gpio = FUNC1(chip);
	int ret, val;

	ret = FUNC2(gpio->lp873->regmap, LP873X_REG_GPO_CTRL, &val);
	if (ret < 0)
		return ret;

	return val & FUNC0(offset * BITS_PER_GPO);
}