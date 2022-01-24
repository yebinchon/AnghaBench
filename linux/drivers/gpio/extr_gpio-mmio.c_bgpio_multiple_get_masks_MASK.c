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
struct gpio_chip {int bgpio_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned long*) ; 
 unsigned long FUNC1 (struct gpio_chip*,int) ; 
 scalar_t__ FUNC2 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *gc,
				     unsigned long *mask, unsigned long *bits,
				     unsigned long *set_mask,
				     unsigned long *clear_mask)
{
	int i;

	*set_mask = 0;
	*clear_mask = 0;

	for (i = 0; i < gc->bgpio_bits; i++) {
		if (*mask == 0)
			break;
		if (FUNC0(i, mask)) {
			if (FUNC2(i, bits))
				*set_mask |= FUNC1(gc, i);
			else
				*clear_mask |= FUNC1(gc, i);
		}
	}
}