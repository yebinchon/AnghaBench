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
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int NODMIS_PER_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC2 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  odmis_bm ; 
 int /*<<< orphan*/  odmis_bm_lock ; 
 int odmis_count ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain,
				 unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC2(domain, virq);

	if (d->hwirq >= odmis_count * NODMIS_PER_FRAME) {
		FUNC3("Failed to teardown msi. Invalid hwirq %lu\n", d->hwirq);
		return;
	}

	FUNC1(domain, virq, nr_irqs);

	/* Actually free the MSI */
	FUNC4(&odmis_bm_lock);
	FUNC0(d->hwirq, odmis_bm);
	FUNC5(&odmis_bm_lock);
}