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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long GPIO_SET_DR_OFFSET ; 
 struct xgene_gpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *gc, unsigned int offset)
{
	struct xgene_gpio *chip = FUNC3(gc);
	unsigned long flags, bank_offset;
	u32 dirval, bit_offset;

	bank_offset = GPIO_SET_DR_OFFSET + FUNC1(offset);
	bit_offset = FUNC2(offset);

	FUNC6(&chip->lock, flags);

	dirval = FUNC4(chip->base + bank_offset);
	dirval |= FUNC0(bit_offset);
	FUNC5(dirval, chip->base + bank_offset);

	FUNC7(&chip->lock, flags);

	return 0;
}