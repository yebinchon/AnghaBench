#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  enable; int /*<<< orphan*/  disable; int /*<<< orphan*/  ack; } ;
struct TYPE_4__ {scalar_t__ irq_ack; } ;
struct irq_chip_type {TYPE_1__ regs; TYPE_2__ chip; } ;
struct irq_chip_generic {int wake_active; struct brcmstb_l2_intc_data* private; } ;
struct brcmstb_l2_intc_data {int saved_mask; } ;

/* Variables and functions */
 struct irq_chip_type* FUNC0 (struct irq_data*) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC1(d);
	struct irq_chip_type *ct = FUNC0(d);
	struct brcmstb_l2_intc_data *b = gc->private;
	unsigned long flags;

	FUNC2(gc, flags);
	if (ct->chip.irq_ack) {
		/* Clear unmasked non-wakeup interrupts */
		FUNC4(gc, ~b->saved_mask & ~gc->wake_active,
				ct->regs.ack);
	}

	/* Restore the saved mask */
	FUNC4(gc, b->saved_mask, ct->regs.disable);
	FUNC4(gc, ~b->saved_mask, ct->regs.enable);
	FUNC3(gc, flags);
}