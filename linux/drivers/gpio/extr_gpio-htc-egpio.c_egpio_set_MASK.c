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
struct gpio_chip {scalar_t__ base; int /*<<< orphan*/  label; } ;
struct egpio_info {int reg_shift; int reg_mask; int /*<<< orphan*/  lock; } ;
struct egpio_chip {int reg_start; int cached_values; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct egpio_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct egpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct egpio_info*,int) ; 
 struct egpio_chip* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *chip, unsigned offset, int value)
{
	unsigned long     flag;
	struct egpio_chip *egpio;
	struct egpio_info *ei;
	int               pos;
	int               reg;
	int               shift;

	FUNC4("egpio_set(%s, %d(%d), %d)\n",
			chip->label, offset, offset+chip->base, value);

	egpio = FUNC3(chip);
	ei    = FUNC0(egpio->dev);
	pos   = FUNC1(ei, offset);
	reg   = egpio->reg_start + pos;
	shift = pos << ei->reg_shift;

	FUNC4("egpio %s: reg %d = 0x%04x\n", value ? "set" : "clear",
			reg, (egpio->cached_values >> shift) & ei->reg_mask);

	FUNC5(&ei->lock, flag);
	if (value)
		egpio->cached_values |= (1 << offset);
	else
		egpio->cached_values &= ~(1 << offset);
	FUNC2((egpio->cached_values >> shift) & ei->reg_mask, ei, reg);
	FUNC6(&ei->lock, flag);
}