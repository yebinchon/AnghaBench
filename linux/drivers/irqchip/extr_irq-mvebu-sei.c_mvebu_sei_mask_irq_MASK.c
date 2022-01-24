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
struct mvebu_sei {int /*<<< orphan*/  mask_lock; scalar_t__ base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mvebu_sei* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct mvebu_sei *sei = FUNC4(d);
	u32 reg, reg_idx = FUNC3(d->hwirq);
	unsigned long flags;

	/* 1 disables the interrupt */
	FUNC5(&sei->mask_lock, flags);
	reg = FUNC7(sei->base + FUNC1(reg_idx));
	reg |= FUNC0(FUNC2(d->hwirq));
	FUNC8(reg, sei->base + FUNC1(reg_idx));
	FUNC6(&sei->mask_lock, flags);
}