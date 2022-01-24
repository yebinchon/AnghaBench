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
typedef  int u32 ;
struct irq_data {int mask; } ;
struct TYPE_2__ {int mask; } ;
struct irq_chip_type {int* mask_cache; TYPE_1__ regs; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 struct irq_chip_type* FUNC0 (struct irq_data*) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*) ; 
 int FUNC4 (struct irq_chip_generic*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_chip_generic*,int,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC1(d);
	struct irq_chip_type *ct = FUNC0(d);
	unsigned long ifr = ct->regs.mask - 8;
	u32 mask = d->mask;

	FUNC2(gc);
	*ct->mask_cache |= mask;
	FUNC5(gc, *ct->mask_cache, ct->regs.mask);
	FUNC5(gc, FUNC4(gc, ifr) & ~mask, ifr);
	FUNC3(gc);
}