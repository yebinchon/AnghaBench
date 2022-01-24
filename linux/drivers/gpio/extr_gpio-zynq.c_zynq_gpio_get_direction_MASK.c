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
struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 struct zynq_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned int pin)
{
	u32 reg;
	unsigned int bank_num, bank_pin_num;
	struct zynq_gpio *gpio = FUNC2(chip);

	FUNC4(pin, &bank_num, &bank_pin_num, gpio);

	reg = FUNC3(gpio->base_addr + FUNC1(bank_num));

	return !(reg & FUNC0(bank_pin_num));
}