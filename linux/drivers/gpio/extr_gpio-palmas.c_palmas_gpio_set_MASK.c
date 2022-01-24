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
struct palmas_gpio {struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  PALMAS_GPIO_BASE ; 
 unsigned int PALMAS_GPIO_CLEAR_DATA_OUT ; 
 unsigned int PALMAS_GPIO_CLEAR_DATA_OUT2 ; 
 unsigned int PALMAS_GPIO_SET_DATA_OUT ; 
 unsigned int PALMAS_GPIO_SET_DATA_OUT2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct palmas_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc, unsigned offset,
			int value)
{
	struct palmas_gpio *pg = FUNC2(gc);
	struct palmas *palmas = pg->palmas;
	int ret;
	unsigned int reg;
	int gpio16 = (offset/8);

	offset %= 8;
	if (gpio16)
		reg = (value) ?
			PALMAS_GPIO_SET_DATA_OUT2 : PALMAS_GPIO_CLEAR_DATA_OUT2;
	else
		reg = (value) ?
			PALMAS_GPIO_SET_DATA_OUT : PALMAS_GPIO_CLEAR_DATA_OUT;

	ret = FUNC3(palmas, PALMAS_GPIO_BASE, reg, FUNC0(offset));
	if (ret < 0)
		FUNC1(gc->parent, "Reg 0x%02x write failed, %d\n", reg, ret);
}