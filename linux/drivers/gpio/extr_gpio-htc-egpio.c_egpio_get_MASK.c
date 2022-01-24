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
struct gpio_chip {scalar_t__ base; } ;
struct egpio_info {int bus_shift; int /*<<< orphan*/  base_addr; } ;
struct egpio_chip {int reg_start; int cached_values; int /*<<< orphan*/  is_out; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct egpio_info* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct egpio_info*,unsigned int) ; 
 int FUNC2 (struct egpio_info*,unsigned int) ; 
 int FUNC3 (struct egpio_info*,int) ; 
 struct egpio_chip* FUNC4 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned offset)
{
	struct egpio_chip *egpio;
	struct egpio_info *ei;
	unsigned           bit;
	int                reg;
	int                value;

	FUNC5("egpio_get_value(%d)\n", chip->base + offset);

	egpio = FUNC4(chip);
	ei    = FUNC0(egpio->dev);
	bit   = FUNC1(ei, offset);
	reg   = egpio->reg_start + FUNC2(ei, offset);

	if (FUNC6(offset, &egpio->is_out)) {
		return !!(egpio->cached_values & (1 << offset));
	} else {
		value = FUNC3(ei, reg);
		FUNC5("readw(%p + %x) = %x\n",
			 ei->base_addr, reg << ei->bus_shift, value);
		return !!(value & bit);
	}
}