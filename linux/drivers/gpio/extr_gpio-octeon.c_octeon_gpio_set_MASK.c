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
struct octeon_gpio {unsigned long long register_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned long long TX_CLEAR ; 
 unsigned long long TX_SET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,unsigned long long) ; 
 struct octeon_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset, int value)
{
	struct octeon_gpio *gpio = FUNC1(chip);
	u64 mask = 1ull << offset;
	u64 reg = gpio->register_base + (value ? TX_SET : TX_CLEAR);
	FUNC0(reg, mask);
}