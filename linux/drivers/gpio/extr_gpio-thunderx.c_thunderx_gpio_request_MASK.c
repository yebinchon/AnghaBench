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
struct thunderx_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct thunderx_gpio* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (struct thunderx_gpio*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int line)
{
	struct thunderx_gpio *txgpio = FUNC0(chip);

	return FUNC1(txgpio, line) ? 0 : -EIO;
}