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
struct gen_74x164_chip {int registers; size_t* buffer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct gen_74x164_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct gen_74x164_chip *chip = FUNC0(gc);
	u8 bank = chip->registers - 1 - offset / 8;
	u8 pin = offset % 8;
	int ret;

	FUNC1(&chip->lock);
	ret = (chip->buffer[bank] >> pin) & 0x1;
	FUNC2(&chip->lock);

	return ret;
}