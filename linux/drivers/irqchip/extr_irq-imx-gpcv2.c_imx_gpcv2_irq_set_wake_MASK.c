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
struct irq_data {int hwirq; struct gpcv2_irqchip_data* chip_data; } ;
struct gpcv2_irqchip_data {int* wakeup_sources; int /*<<< orphan*/  rlock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d, unsigned int on)
{
	struct gpcv2_irqchip_data *cd = d->chip_data;
	unsigned int idx = d->hwirq / 32;
	unsigned long flags;
	u32 mask, val;

	FUNC1(&cd->rlock, flags);
	mask = FUNC0(d->hwirq % 32);
	val = cd->wakeup_sources[idx];

	cd->wakeup_sources[idx] = on ? (val & ~mask) : (val | mask);
	FUNC2(&cd->rlock, flags);

	/*
	 * Do *not* call into the parent, as the GIC doesn't have any
	 * wake-up facility...
	 */

	return 0;
}