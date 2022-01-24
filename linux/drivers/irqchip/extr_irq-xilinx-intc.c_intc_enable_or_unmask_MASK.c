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
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAR ; 
 int /*<<< orphan*/  SIE ; 
 scalar_t__ FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	unsigned long mask = 1 << d->hwirq;

	FUNC1("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);

	/* ack level irqs because they can't be acked during
	 * ack function since the handle_level_irq function
	 * acks the irq before calling the interrupt handler
	 */
	if (FUNC0(d))
		FUNC2(IAR, mask);

	FUNC2(SIE, mask);
}