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
struct gpio_chip {int dummy; } ;
struct da9055_gpio {int /*<<< orphan*/  da9055; } ;

/* Variables and functions */
 unsigned char DA9055_ACT_LOW ; 
 unsigned char DA9055_GPI ; 
 unsigned char DA9055_PORT_MASK ; 
 unsigned char FUNC0 (unsigned int) ; 
 scalar_t__ DA9055_REG_GPIO0_1 ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned char,unsigned char) ; 
 struct da9055_gpio* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct da9055_gpio *gpio = FUNC2(gc);
	unsigned char reg_byte;

	reg_byte = (DA9055_ACT_LOW | DA9055_GPI)
				<< FUNC0(offset);

	return FUNC1(gpio->da9055, (offset >> 1) +
				DA9055_REG_GPIO0_1,
				DA9055_PORT_MASK <<
				FUNC0(offset),
				reg_byte);
}