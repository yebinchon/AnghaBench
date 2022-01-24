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
struct xgpio_instance {int /*<<< orphan*/ * gpio_lock; int /*<<< orphan*/ * gpio_dir; scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XGPIO_TRI_OFFSET ; 
 struct xgpio_instance* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct xgpio_instance*,unsigned int) ; 
 int FUNC5 (struct xgpio_instance*,unsigned int) ; 
 scalar_t__ FUNC6 (struct xgpio_instance*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *gc, unsigned int gpio)
{
	unsigned long flags;
	struct xgpio_instance *chip = FUNC1(gc);
	int index =  FUNC4(chip, gpio);
	int offset =  FUNC5(chip, gpio);

	FUNC2(&chip->gpio_lock[index], flags);

	/* Set the GPIO bit in shadow register and set direction as input */
	chip->gpio_dir[index] |= FUNC0(offset);
	FUNC7(chip->regs + XGPIO_TRI_OFFSET +
		       FUNC6(chip, gpio), chip->gpio_dir[index]);

	FUNC3(&chip->gpio_lock[index], flags);

	return 0;
}