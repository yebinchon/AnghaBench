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
struct madera_gpio {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int MADERA_GP1_LVL_MASK ; 
 scalar_t__ MADERA_GPIO1_CTRL_1 ; 
 struct madera_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int offset)
{
	struct madera_gpio *madera_gpio = FUNC0(chip);
	struct madera *madera = madera_gpio->madera;
	unsigned int reg_offset = 2 * offset;
	unsigned int val;
	int ret;

	ret = FUNC1(madera->regmap, MADERA_GPIO1_CTRL_1 + reg_offset,
			  &val);
	if (ret < 0)
		return ret;

	return !!(val & MADERA_GP1_LVL_MASK);
}