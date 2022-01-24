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
struct rdc321x_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg2_ctrl_base; int /*<<< orphan*/  reg1_ctrl_base; int /*<<< orphan*/  sb_pdev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct rdc321x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
				unsigned gpio, int value)
{
	struct rdc321x_gpio *gpch;
	int err;
	u32 reg;

	gpch = FUNC0(chip);

	FUNC4(&gpch->lock);
	err = FUNC1(gpch->sb_pdev, gpio < 32 ?
			gpch->reg1_ctrl_base : gpch->reg2_ctrl_base, &reg);
	if (err)
		goto unlock;

	reg |= 1 << (gpio & 0x1f);

	err = FUNC2(gpch->sb_pdev, gpio < 32 ?
			gpch->reg1_ctrl_base : gpch->reg2_ctrl_base, reg);
	if (err)
		goto unlock;

	FUNC3(chip, gpio, value);

unlock:
	FUNC5(&gpch->lock);

	return err;
}