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
typedef  size_t u8 ;
struct gpio_chip {int dummy; } ;
struct gen_74x164_chip {int registers; int* buffer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gen_74x164_chip*) ; 
 struct gen_74x164_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc,
		unsigned offset, int val)
{
	struct gen_74x164_chip *chip = FUNC1(gc);
	u8 bank = chip->registers - 1 - offset / 8;
	u8 pin = offset % 8;

	FUNC2(&chip->lock);
	if (val)
		chip->buffer[bank] |= (1 << pin);
	else
		chip->buffer[bank] &= ~(1 << pin);

	FUNC0(chip);
	FUNC3(&chip->lock);
}