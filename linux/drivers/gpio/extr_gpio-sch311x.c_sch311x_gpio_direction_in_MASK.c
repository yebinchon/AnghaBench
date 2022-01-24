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
typedef  int /*<<< orphan*/  u8 ;
struct sch311x_gpio_block {int /*<<< orphan*/  lock; scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCH311X_GPIO_CONF_DIR ; 
 struct sch311x_gpio_block* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct sch311x_gpio_block *block = FUNC0(chip);
	u8 data;

	FUNC3(&block->lock);
	data = FUNC1(block->runtime_reg + block->config_regs[offset]);
	data |= SCH311X_GPIO_CONF_DIR;
	FUNC2(data, block->runtime_reg + block->config_regs[offset]);
	FUNC4(&block->lock);

	return 0;
}