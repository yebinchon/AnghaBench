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
typedef  unsigned long u64 ;
struct thunderx_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int ngpio; } ;

/* Variables and functions */
 int GPIO_2ND_BANK ; 
 scalar_t__ GPIO_TX_CLR ; 
 scalar_t__ GPIO_TX_SET ; 
 struct thunderx_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip,
				       unsigned long *mask,
				       unsigned long *bits)
{
	int bank;
	u64 set_bits, clear_bits;
	struct thunderx_gpio *txgpio = FUNC0(chip);

	for (bank = 0; bank <= chip->ngpio / 64; bank++) {
		set_bits = bits[bank] & mask[bank];
		clear_bits = ~bits[bank] & mask[bank];
		FUNC1(set_bits, txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_TX_SET);
		FUNC1(clear_bits, txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_TX_CLR);
	}
}