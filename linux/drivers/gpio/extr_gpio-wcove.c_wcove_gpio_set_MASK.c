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
struct wcove_gpio {int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_OUT ; 
 struct wcove_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int gpio, int value)
{
	struct wcove_gpio *wg = FUNC0(chip);
	int reg = FUNC2(gpio, CTRL_OUT);

	if (reg < 0)
		return;

	if (value)
		FUNC1(wg->regmap, reg, 1, 1);
	else
		FUNC1(wg->regmap, reg, 1, 0);
}