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
typedef  int uint8_t ;
struct max732x_chip {int* reg_out; int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct max732x_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct max732x_chip*,unsigned int) ; 
 int FUNC2 (struct max732x_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *gc, unsigned off, int mask,
				  int val)
{
	struct max732x_chip *chip = FUNC0(gc);
	uint8_t reg_out;
	int ret;

	FUNC3(&chip->lock);

	reg_out = (off > 7) ? chip->reg_out[1] : chip->reg_out[0];
	reg_out = (reg_out & ~mask) | (val & mask);

	ret = FUNC2(chip, FUNC1(chip, off), reg_out);
	if (ret < 0)
		goto out;

	/* update the shadow register then */
	if (off > 7)
		chip->reg_out[1] = reg_out;
	else
		chip->reg_out[0] = reg_out;
out:
	FUNC4(&chip->lock);
}