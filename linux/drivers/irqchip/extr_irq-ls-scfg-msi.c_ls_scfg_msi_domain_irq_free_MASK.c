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
struct ls_scfg_msi {int irqs_num; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct ls_scfg_msi* FUNC1 (struct irq_data*) ; 
 struct irq_data* FUNC2 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain,
				   unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC2(domain, virq);
	struct ls_scfg_msi *msi_data = FUNC1(d);
	int pos;

	pos = d->hwirq;
	if (pos < 0 || pos >= msi_data->irqs_num) {
		FUNC3("failed to teardown msi. Invalid hwirq %d\n", pos);
		return;
	}

	FUNC4(&msi_data->lock);
	FUNC0(pos, msi_data->used);
	FUNC5(&msi_data->lock);
}