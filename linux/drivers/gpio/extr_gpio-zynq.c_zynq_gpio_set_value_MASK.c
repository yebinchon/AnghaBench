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
struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int ZYNQ_GPIO_MID_PIN_NUM ; 
 int ZYNQ_GPIO_UPPER_MASK ; 
 struct zynq_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned int pin,
				int state)
{
	unsigned int reg_offset, bank_num, bank_pin_num;
	struct zynq_gpio *gpio = FUNC2(chip);

	FUNC4(pin, &bank_num, &bank_pin_num, gpio);

	if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {
		/* only 16 data bits in bit maskable reg */
		bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
		reg_offset = FUNC1(bank_num);
	} else {
		reg_offset = FUNC0(bank_num);
	}

	/*
	 * get the 32 bit value to be written to the mask/data register where
	 * the upper 16 bits is the mask and lower 16 bits is the data
	 */
	state = !!state;
	state = ~(1 << (bank_pin_num + ZYNQ_GPIO_MID_PIN_NUM)) &
		((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);

	FUNC3(state, gpio->base_addr + reg_offset);
}