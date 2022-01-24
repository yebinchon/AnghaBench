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
typedef  int u64 ;
struct thunderx_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int GPIO_BIT_CFG_TX_OE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct thunderx_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct thunderx_gpio*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int line)
{
	struct thunderx_gpio *txgpio = FUNC1(chip);
	u64 bit_cfg;

	if (!FUNC3(txgpio, line))
		/*
		 * Say it is input for now to avoid WARNing on
		 * gpiochip_add_data().  We will WARN if someone
		 * requests it or tries to use it.
		 */
		return 1;

	bit_cfg = FUNC2(txgpio->register_base + FUNC0(line));

	return !(bit_cfg & GPIO_BIT_CFG_TX_OE);
}