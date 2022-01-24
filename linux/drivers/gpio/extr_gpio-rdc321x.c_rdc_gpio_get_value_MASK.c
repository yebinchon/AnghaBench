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
typedef  int u32 ;
struct rdc321x_gpio {int reg1_data_base; int reg2_data_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  sb_pdev; int /*<<< orphan*/ * data_reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct rdc321x_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned gpio)
{
	struct rdc321x_gpio *gpch;
	u32 value = 0;
	int reg;

	gpch = FUNC0(chip);
	reg = gpio < 32 ? gpch->reg1_data_base : gpch->reg2_data_base;

	FUNC3(&gpch->lock);
	FUNC2(gpch->sb_pdev, reg,
					gpch->data_reg[gpio < 32 ? 0 : 1]);
	FUNC1(gpch->sb_pdev, reg, &value);
	FUNC4(&gpch->lock);

	return (1 << (gpio & 0x1f)) & value ? 1 : 0;
}