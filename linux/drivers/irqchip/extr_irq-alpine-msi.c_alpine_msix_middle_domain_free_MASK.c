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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct alpine_msix_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alpine_msix_data*,int /*<<< orphan*/ ,unsigned int) ; 
 struct alpine_msix_data* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct irq_domain *domain,
					   unsigned int virq,
					   unsigned int nr_irqs)
{
	struct irq_data *d = FUNC3(domain, virq);
	struct alpine_msix_data *priv = FUNC1(d);

	FUNC2(domain, virq, nr_irqs);
	FUNC0(priv, d->hwirq, nr_irqs);
}