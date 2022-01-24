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
struct sch311x_gpio_block {scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct sch311x_gpio_block* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct sch311x_gpio_block *block = FUNC1(chip);

	if (block->config_regs[offset] == 0) /* GPIO is not available */
		return -ENODEV;

	if (!FUNC2(block->runtime_reg + block->config_regs[offset],
			    1, DRV_NAME)) {
		FUNC0(chip->parent, "Failed to request region 0x%04x.\n",
			block->runtime_reg + block->config_regs[offset]);
		return -EBUSY;
	}
	return 0;
}