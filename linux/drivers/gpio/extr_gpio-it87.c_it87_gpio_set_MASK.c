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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct it87_gpio {scalar_t__ io_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct it87_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip,
			  unsigned gpio_num, int val)
{
	u8 mask, curr_vals;
	u16 reg;
	struct it87_gpio *it87_gpio = FUNC0(chip);

	mask = 1 << (gpio_num % 8);
	reg = (gpio_num / 8) + it87_gpio->io_base;

	curr_vals = FUNC1(reg);
	if (val)
		FUNC2(curr_vals | mask, reg);
	else
		FUNC2(curr_vals & ~mask, reg);
}