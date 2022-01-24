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
typedef  int u8 ;
struct sch311x_gpio_block {int /*<<< orphan*/  lock; scalar_t__ data_reg; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct sch311x_gpio_block* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct sch311x_gpio_block *block = FUNC1(chip);
	u8 data;

	FUNC3(&block->lock);
	data = FUNC2(block->runtime_reg + block->data_reg);
	FUNC4(&block->lock);

	return !!(data & FUNC0(offset));
}