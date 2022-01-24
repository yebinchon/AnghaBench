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
typedef  unsigned int u32 ;
struct zynq_gpio {scalar_t__ base_addr; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct zynq_gpio*) ; 
 struct zynq_gpio* FUNC3 (struct gpio_chip*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int*,unsigned int*,struct zynq_gpio*) ; 
 scalar_t__ FUNC6 (struct zynq_gpio*) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned int pin)
{
	u32 data;
	unsigned int bank_num, bank_pin_num;
	struct zynq_gpio *gpio = FUNC3(chip);

	FUNC5(pin, &bank_num, &bank_pin_num, gpio);

	if (FUNC2(gpio)) {
		if (FUNC6(gpio)) {
			if (bank_num <= 1) {
				data = FUNC4(gpio->base_addr +
					FUNC1(bank_num));
			} else {
				data = FUNC4(gpio->base_addr +
					FUNC0(bank_num));
			}
		} else {
			if (bank_num <= 2) {
				data = FUNC4(gpio->base_addr +
					FUNC1(bank_num));
			} else {
				data = FUNC4(gpio->base_addr +
					FUNC0(bank_num));
			}
		}
	} else {
		data = FUNC4(gpio->base_addr +
			FUNC1(bank_num));
	}
	return (data >> bank_pin_num) & 1;
}