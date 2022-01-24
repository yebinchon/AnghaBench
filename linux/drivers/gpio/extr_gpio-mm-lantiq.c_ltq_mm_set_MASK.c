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
struct ltq_mm {int shadow; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ltq_mm* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct ltq_mm*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *gc, unsigned offset, int value)
{
	struct ltq_mm *chip = FUNC0(gc);

	if (value)
		chip->shadow |= (1 << offset);
	else
		chip->shadow &= ~(1 << offset);
	FUNC1(chip);
}