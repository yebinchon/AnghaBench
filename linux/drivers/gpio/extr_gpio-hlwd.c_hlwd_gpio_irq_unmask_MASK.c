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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  bgpio_lock; } ;
struct hlwd_gpio {TYPE_1__ gpioc; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HW_GPIOB_INTMASK ; 
 struct hlwd_gpio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct hlwd_gpio *hlwd =
		FUNC1(FUNC4(data));
	unsigned long flags;
	u32 mask;

	FUNC5(&hlwd->gpioc.bgpio_lock, flags);
	mask = FUNC2(hlwd->regs + HW_GPIOB_INTMASK);
	mask |= FUNC0(data->hwirq);
	FUNC3(mask, hlwd->regs + HW_GPIOB_INTMASK);
	FUNC6(&hlwd->gpioc.bgpio_lock, flags);
}