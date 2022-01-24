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
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  davinci_cp_intc_irq_chip ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *h, unsigned int virq,
			  irq_hw_number_t hw)
{
	FUNC3("cp_intc_host_map(%d, 0x%lx)\n", virq, hw);

	FUNC0(virq, &davinci_cp_intc_irq_chip);
	FUNC2(virq);
	FUNC1(virq, handle_edge_irq);

	return 0;
}