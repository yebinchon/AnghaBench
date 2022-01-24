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
struct irq_domain {struct fpga_irq_data* host_data; } ;
struct fpga_irq_data {int valid; int /*<<< orphan*/  chip; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct fpga_irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int irq,
		irq_hw_number_t hwirq)
{
	struct fpga_irq_data *f = d->host_data;

	/* Skip invalid IRQs, only register handlers for the real ones */
	if (!(f->valid & FUNC0(hwirq)))
		return -EPERM;
	FUNC2(irq, f);
	FUNC1(irq, &f->chip,
				handle_level_irq);
	FUNC3(irq);
	return 0;
}