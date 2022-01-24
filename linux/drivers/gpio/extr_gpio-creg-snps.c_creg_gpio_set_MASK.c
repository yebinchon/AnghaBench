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
struct gpio_chip {int dummy; } ;
struct creg_layout {int* on; int* off; int* shift; int* bit_per_gpio; } ;
struct creg_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; struct creg_layout* layout; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct creg_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *gc, unsigned int offset, int val)
{
	struct creg_gpio *hcg = FUNC1(gc);
	const struct creg_layout *layout = hcg->layout;
	u32 reg, reg_shift, value;
	unsigned long flags;
	int i;

	value = val ? hcg->layout->on[offset] : hcg->layout->off[offset];

	reg_shift = layout->shift[offset];
	for (i = 0; i < offset; i++)
		reg_shift += layout->bit_per_gpio[i] + layout->shift[i];

	FUNC3(&hcg->lock, flags);
	reg = FUNC2(hcg->regs);
	reg &= ~(FUNC0(layout->bit_per_gpio[i] - 1, 0) << reg_shift);
	reg |=  (value << reg_shift);
	FUNC5(reg, hcg->regs);
	FUNC4(&hcg->lock, flags);
}