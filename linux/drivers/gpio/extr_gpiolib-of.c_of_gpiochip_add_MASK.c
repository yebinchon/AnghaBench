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
struct gpio_chip {int of_gpio_n_cells; int /*<<< orphan*/  of_node; int /*<<< orphan*/  names; scalar_t__ of_xlate; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_PHANDLE_ARGS ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ of_gpio_simple_xlate ; 
 int FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct gpio_chip *chip)
{
	int ret;

	if (!chip->of_node)
		return 0;

	if (!chip->of_xlate) {
		chip->of_gpio_n_cells = 2;
		chip->of_xlate = of_gpio_simple_xlate;
	}

	if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
		return -EINVAL;

	FUNC4(chip);

	ret = FUNC3(chip);
	if (ret)
		return ret;

	/* If the chip defines names itself, these take precedence */
	if (!chip->names)
		FUNC0(chip,
					   FUNC2(chip->of_node));

	FUNC6(chip->of_node);

	ret = FUNC5(chip);
	if (ret) {
		FUNC7(chip->of_node);
		FUNC1(chip);
	}

	return ret;
}