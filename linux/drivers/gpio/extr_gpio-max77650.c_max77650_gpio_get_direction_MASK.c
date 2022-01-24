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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MAX77650_REG_CNFG_GPIO ; 
 struct max77650_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc,
				       unsigned int offset)
{
	struct max77650_gpio_chip *chip = FUNC1(gc);
	unsigned int val;
	int rv;

	rv = FUNC2(chip->map, MAX77650_REG_CNFG_GPIO, &val);
	if (rv)
		return rv;

	return FUNC0(val);
}