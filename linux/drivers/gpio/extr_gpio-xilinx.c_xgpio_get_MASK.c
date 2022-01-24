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
typedef  int u32 ;
struct xgpio_instance {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XGPIO_DATA_OFFSET ; 
 struct xgpio_instance* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgpio_instance*,unsigned int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct xgpio_instance*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int gpio)
{
	struct xgpio_instance *chip = FUNC1(gc);
	u32 val;

	val = FUNC3(chip->regs + XGPIO_DATA_OFFSET +
			    FUNC4(chip, gpio));

	return !!(val & FUNC0(FUNC2(chip, gpio)));
}