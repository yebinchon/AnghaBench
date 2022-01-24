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
struct mvebu_gicp {unsigned int spi_cnt; int /*<<< orphan*/  spi_lock; int /*<<< orphan*/  spi_bitmap; int /*<<< orphan*/  dev; } ;
struct irq_fwspec {int param_count; scalar_t__* param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {TYPE_1__* parent; struct mvebu_gicp* host_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ GIC_SPI ; 
 scalar_t__ IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct mvebu_gicp*,unsigned int) ; 
 int /*<<< orphan*/  gicp_irq_chip ; 
 int FUNC5 (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*,unsigned int,unsigned int) ; 
 int FUNC7 (struct irq_domain*,unsigned int,unsigned int,int /*<<< orphan*/ *,struct mvebu_gicp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct irq_domain *domain, unsigned int virq,
				 unsigned int nr_irqs, void *args)
{
	struct mvebu_gicp *gicp = domain->host_data;
	struct irq_fwspec fwspec;
	unsigned int hwirq;
	int ret;

	FUNC8(&gicp->spi_lock);
	hwirq = FUNC3(gicp->spi_bitmap, gicp->spi_cnt);
	if (hwirq == gicp->spi_cnt) {
		FUNC9(&gicp->spi_lock);
		return -ENOSPC;
	}
	FUNC1(hwirq, gicp->spi_bitmap);
	FUNC9(&gicp->spi_lock);

	fwspec.fwnode = domain->parent->fwnode;
	fwspec.param_count = 3;
	fwspec.param[0] = GIC_SPI;
	fwspec.param[1] = FUNC4(gicp, hwirq) - 32;
	/*
	 * Assume edge rising for now, it will be properly set when
	 * ->set_type() is called
	 */
	fwspec.param[2] = IRQ_TYPE_EDGE_RISING;

	ret = FUNC5(domain, virq, 1, &fwspec);
	if (ret) {
		FUNC2(gicp->dev, "Cannot allocate parent IRQ\n");
		goto free_hwirq;
	}

	ret = FUNC7(domain, virq, hwirq,
					    &gicp_irq_chip, gicp);
	if (ret)
		goto free_irqs_parent;

	return 0;

free_irqs_parent:
	FUNC6(domain, virq, nr_irqs);
free_hwirq:
	FUNC8(&gicp->spi_lock);
	FUNC0(hwirq, gicp->spi_bitmap);
	FUNC9(&gicp->spi_lock);
	return ret;
}