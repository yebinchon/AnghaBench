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
 unsigned char DA9055_PORT_MASK ; 
 unsigned char FUNC0 (unsigned int) ; 
 unsigned char DA9055_PUSH_PULL ; 
 scalar_t__ DA9055_REG_GPIO0_1 ; 
 unsigned char DA9055_VDD_IO ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned char,unsigned char) ; 
 struct da9055_gpio* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc,
					unsigned offset, int value)
{
	struct da9055_gpio *gpio = FUNC3(gc);
	unsigned char reg_byte;
	int ret;

	reg_byte = (DA9055_VDD_IO | DA9055_PUSH_PULL)
					<< FUNC0(offset);

	ret = FUNC2(gpio->da9055, (offset >> 1) +
				DA9055_REG_GPIO0_1,
				DA9055_PORT_MASK <<
				FUNC0(offset),
				reg_byte);
	if (ret < 0)
		return ret;

	FUNC1(gc, offset, value);

	return 0;
}