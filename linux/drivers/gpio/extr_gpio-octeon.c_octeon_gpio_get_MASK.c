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
typedef  unsigned long long u64 ;
struct octeon_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ RX_DAT ; 
 unsigned long long FUNC0 (scalar_t__) ; 
 struct octeon_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct octeon_gpio *gpio = FUNC1(chip);
	u64 read_bits = FUNC0(gpio->register_base + RX_DAT);

	return ((1ull << offset) & read_bits) != 0;
}