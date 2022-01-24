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
struct gpio_reg {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  out; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct gpio_reg* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *gc, unsigned offset, int value)
{
	struct gpio_reg *r = FUNC3(gc);
	unsigned long flags;
	u32 val, mask = FUNC0(offset);

	FUNC1(&r->lock, flags);
	val = r->out;
	if (value)
		val |= mask;
	else
		val &= ~mask;
	r->out = val;
	FUNC4(val, r->reg);
	FUNC2(&r->lock, flags);
}