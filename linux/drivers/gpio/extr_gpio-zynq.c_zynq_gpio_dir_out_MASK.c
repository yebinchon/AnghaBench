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
typedef  int /*<<< orphan*/  u32 ;
struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 struct zynq_gpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip, unsigned int pin,
			     int state)
{
	u32 reg;
	unsigned int bank_num, bank_pin_num;
	struct zynq_gpio *gpio = FUNC3(chip);

	FUNC6(pin, &bank_num, &bank_pin_num, gpio);

	/* set the GPIO pin as output */
	reg = FUNC4(gpio->base_addr + FUNC1(bank_num));
	reg |= FUNC0(bank_pin_num);
	FUNC5(reg, gpio->base_addr + FUNC1(bank_num));

	/* configure the output enable reg for the pin */
	reg = FUNC4(gpio->base_addr + FUNC2(bank_num));
	reg |= FUNC0(bank_pin_num);
	FUNC5(reg, gpio->base_addr + FUNC2(bank_num));

	/* set the state of the pin */
	FUNC7(chip, pin, state);
	return 0;
}