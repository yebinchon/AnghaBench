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
typedef  scalar_t__ u64 ;
struct thunderx_gpio {int /*<<< orphan*/  invert_mask; scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int GPIO_2ND_BANK ; 
 scalar_t__ GPIO_RX_DAT ; 
 struct thunderx_gpio* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int line)
{
	struct thunderx_gpio *txgpio = FUNC1(chip);
	int bank = line / 64;
	int bank_bit = line % 64;
	u64 read_bits = FUNC2(txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_RX_DAT);
	u64 masked_bits = read_bits & FUNC0(bank_bit);

	if (FUNC3(line, txgpio->invert_mask))
		return masked_bits == 0;
	else
		return masked_bits != 0;
}