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
struct xgene_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (unsigned int) ; 
 unsigned long GPIO_SET_DR_OFFSET ; 
 struct xgene_gpio* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int offset)
{
	struct xgene_gpio *chip = FUNC3(gc);
	unsigned long bank_offset, bit_offset;

	bank_offset = GPIO_SET_DR_OFFSET + FUNC1(offset);
	bit_offset = FUNC2(offset);

	return !!(FUNC4(chip->base + bank_offset) & FUNC0(bit_offset));
}