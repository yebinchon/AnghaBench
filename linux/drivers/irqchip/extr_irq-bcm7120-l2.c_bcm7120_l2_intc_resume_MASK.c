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
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;
struct irq_chip_type {TYPE_1__ regs; } ;
struct irq_chip_generic {int /*<<< orphan*/  mask_cache; struct irq_chip_type* chip_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_chip_generic *gc)
{
	struct irq_chip_type *ct = gc->chip_types;

	/* Restore the saved mask */
	FUNC0(gc);
	FUNC2(gc, gc->mask_cache, ct->regs.mask);
	FUNC1(gc);
}