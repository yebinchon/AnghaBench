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
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct gpio_chip {int (* get_direction ) (struct gpio_chip*,unsigned int) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FLAG_IS_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct gpio_desc*) ; 
 struct gpio_chip* FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gpio_chip*,unsigned int) ; 

int FUNC5(struct gpio_desc *desc)
{
	struct gpio_chip *chip;
	unsigned offset;
	int ret;

	chip = FUNC2(desc);
	offset = FUNC1(desc);

	if (!chip->get_direction)
		return -ENOTSUPP;

	ret = chip->get_direction(chip, offset);
	if (ret > 0) {
		/* GPIOF_DIR_IN, or other positive */
		ret = 1;
		FUNC0(FLAG_IS_OUT, &desc->flags);
	}
	if (ret == 0) {
		/* GPIOF_DIR_OUT */
		FUNC3(FLAG_IS_OUT, &desc->flags);
	}
	return ret;
}