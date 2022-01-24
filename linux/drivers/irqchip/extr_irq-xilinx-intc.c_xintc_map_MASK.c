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
struct irq_domain {int dummy; } ;
typedef  int irq_hw_number_t ;
struct TYPE_2__ {int intr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  intc_dev ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* xintc_irqc ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
{
	if (xintc_irqc->intr_mask & (1 << hw)) {
		FUNC1(irq, &intc_dev,
						handle_edge_irq, "edge");
		FUNC0(irq, IRQ_LEVEL);
	} else {
		FUNC1(irq, &intc_dev,
						handle_level_irq, "level");
		FUNC2(irq, IRQ_LEVEL);
	}
	return 0;
}