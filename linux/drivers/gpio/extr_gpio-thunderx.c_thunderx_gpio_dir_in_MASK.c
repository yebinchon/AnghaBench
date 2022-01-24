#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thunderx_gpio {int /*<<< orphan*/  lock; scalar_t__ register_base; TYPE_1__* line_entries; int /*<<< orphan*/  od_mask; int /*<<< orphan*/  invert_mask; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fil_bits; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct thunderx_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thunderx_gpio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned int line)
{
	struct thunderx_gpio *txgpio = FUNC2(chip);

	if (!FUNC5(txgpio, line))
		return -EIO;

	FUNC3(&txgpio->lock);
	FUNC1(line, txgpio->invert_mask);
	FUNC1(line, txgpio->od_mask);
	FUNC6(txgpio->line_entries[line].fil_bits,
	       txgpio->register_base + FUNC0(line));
	FUNC4(&txgpio->lock);
	return 0;
}