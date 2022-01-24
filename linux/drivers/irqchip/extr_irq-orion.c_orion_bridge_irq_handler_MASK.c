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
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip_generic {int mask_cache; scalar_t__ irq_base; scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ ORION_BRIDGE_IRQ_CAUSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,scalar_t__) ; 
 struct irq_chip_generic* FUNC4 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct irq_domain *d = FUNC2(desc);

	struct irq_chip_generic *gc = FUNC4(d, 0);
	u32 stat = FUNC5(gc->reg_base + ORION_BRIDGE_IRQ_CAUSE) &
		   gc->mask_cache;

	while (stat) {
		u32 hwirq = FUNC0(stat);

		FUNC1(FUNC3(d, gc->irq_base + hwirq));
		stat &= ~(1 << hwirq);
	}
}