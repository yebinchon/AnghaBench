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
typedef  unsigned int uint8_t ;
struct max732x_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct max732x_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct max732x_chip*,unsigned int) ; 
 int FUNC2 (struct max732x_chip*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned off)
{
	struct max732x_chip *chip = FUNC0(gc);
	uint8_t reg_val;
	int ret;

	ret = FUNC2(chip, FUNC1(chip, off), &reg_val);
	if (ret < 0)
		return ret;

	return !!(reg_val & (1u << (off & 0x7)));
}