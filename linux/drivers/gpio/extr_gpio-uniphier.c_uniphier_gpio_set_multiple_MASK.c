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
struct gpio_chip {int ngpio; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 size_t FUNC0 (int) ; 
 unsigned long UNIPHIER_GPIO_BANK_MASK ; 
 int UNIPHIER_GPIO_LINES_PER_BANK ; 
 int /*<<< orphan*/  UNIPHIER_GPIO_PORT_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip,
				       unsigned long *mask, unsigned long *bits)
{
	unsigned int bank, shift, bank_mask, bank_bits;
	int i;

	for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
		bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
		shift = i % BITS_PER_LONG;
		bank_mask = (mask[FUNC0(i)] >> shift) &
						UNIPHIER_GPIO_BANK_MASK;
		bank_bits = bits[FUNC0(i)] >> shift;

		FUNC1(chip, bank, UNIPHIER_GPIO_PORT_DATA,
					 bank_mask, bank_bits);
	}
}