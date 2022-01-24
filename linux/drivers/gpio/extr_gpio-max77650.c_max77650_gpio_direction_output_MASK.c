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
struct max77650_gpio_chip {int /*<<< orphan*/  map; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int MAX77650_GPIO_DIR_MASK ; 
 int MAX77650_GPIO_DIR_OUT ; 
 int MAX77650_GPIO_OUTVAL_MASK ; 
 int MAX77650_GPIO_OUT_HIGH ; 
 int MAX77650_GPIO_OUT_LOW ; 
 int /*<<< orphan*/  MAX77650_REG_CNFG_GPIO ; 
 struct max77650_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc,
					  unsigned int offset, int value)
{
	struct max77650_gpio_chip *chip = FUNC0(gc);
	int mask, regval;

	mask = MAX77650_GPIO_DIR_MASK | MAX77650_GPIO_OUTVAL_MASK;
	regval = value ? MAX77650_GPIO_OUT_HIGH : MAX77650_GPIO_OUT_LOW;
	regval |= MAX77650_GPIO_DIR_OUT;

	return FUNC1(chip->map,
				  MAX77650_REG_CNFG_GPIO, mask, regval);
}