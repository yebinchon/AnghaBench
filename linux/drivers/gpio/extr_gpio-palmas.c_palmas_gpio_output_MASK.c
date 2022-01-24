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
 unsigned int PALMAS_GPIO_DATA_DIR ; 
 unsigned int PALMAS_GPIO_DATA_DIR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct palmas_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int) ; 
 int FUNC4 (struct palmas*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned offset,
				int value)
{
	struct palmas_gpio *pg = FUNC2(gc);
	struct palmas *palmas = pg->palmas;
	int ret;
	unsigned int reg;
	int gpio16 = (offset/8);

	offset %= 8;
	reg = (gpio16) ? PALMAS_GPIO_DATA_DIR2 : PALMAS_GPIO_DATA_DIR;

	/* Set the initial value */
	FUNC3(gc, offset, value);

	ret = FUNC4(palmas, PALMAS_GPIO_BASE, reg,
				FUNC0(offset), FUNC0(offset));
	if (ret < 0)
		FUNC1(gc->parent, "Reg 0x%02x update failed, %d\n", reg,
			ret);
	return ret;
}