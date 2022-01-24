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
typedef  unsigned long u32 ;
struct gpio_rcar_priv {int /*<<< orphan*/  lock; } ;
struct gpio_chip {unsigned long* valid_mask; scalar_t__ ngpio; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUTDT ; 
 unsigned long FUNC1 (struct gpio_rcar_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,unsigned long) ; 
 struct gpio_rcar_priv* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip, unsigned long *mask,
				   unsigned long *bits)
{
	struct gpio_rcar_priv *p = FUNC3(chip);
	unsigned long flags;
	u32 val, bankmask;

	bankmask = mask[0] & FUNC0(chip->ngpio - 1, 0);
	if (chip->valid_mask)
		bankmask &= chip->valid_mask[0];

	if (!bankmask)
		return;

	FUNC4(&p->lock, flags);
	val = FUNC1(p, OUTDT);
	val &= ~bankmask;
	val |= (bankmask & bits[0]);
	FUNC2(p, OUTDT, val);
	FUNC5(&p->lock, flags);
}