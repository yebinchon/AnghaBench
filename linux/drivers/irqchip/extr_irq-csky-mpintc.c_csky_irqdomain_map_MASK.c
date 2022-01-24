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
struct irq_domain {int dummy; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ COMM_IRQ_BASE ; 
 int /*<<< orphan*/  csky_irq_chip ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, unsigned int irq,
			      irq_hw_number_t hwirq)
{
	if (hwirq < COMM_IRQ_BASE) {
		FUNC1(irq);
		FUNC0(irq, &csky_irq_chip,
					 handle_percpu_irq);
	} else {
		FUNC0(irq, &csky_irq_chip,
					 handle_fasteoi_irq);
	}

	return 0;
}