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

/* Variables and functions */
 int /*<<< orphan*/  MSIC_GPIO_DIR_IN ; 
 int /*<<< orphan*/  MSIC_GPIO_DIR_MASK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	int reg;

	reg = FUNC1(offset);
	if (reg < 0)
		return reg;

	return FUNC0(reg, MSIC_GPIO_DIR_IN, MSIC_GPIO_DIR_MASK);
}