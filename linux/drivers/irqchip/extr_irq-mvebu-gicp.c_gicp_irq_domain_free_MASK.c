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
struct mvebu_gicp {scalar_t__ spi_cnt; int /*<<< orphan*/  spi_lock; int /*<<< orphan*/  spi_bitmap; int /*<<< orphan*/  dev; } ;
struct irq_domain {struct mvebu_gicp* host_data; } ;
struct irq_data {scalar_t__ hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain,
				 unsigned int virq, unsigned int nr_irqs)
{
	struct mvebu_gicp *gicp = domain->host_data;
	struct irq_data *d = FUNC3(domain, virq);

	if (d->hwirq >= gicp->spi_cnt) {
		FUNC1(gicp->dev, "Invalid hwirq %lu\n", d->hwirq);
		return;
	}

	FUNC2(domain, virq, nr_irqs);

	FUNC4(&gicp->spi_lock);
	FUNC0(d->hwirq, gicp->spi_bitmap);
	FUNC5(&gicp->spi_lock);
}