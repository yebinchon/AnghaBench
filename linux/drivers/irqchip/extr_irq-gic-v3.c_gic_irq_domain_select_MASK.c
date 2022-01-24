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
struct irq_fwspec {scalar_t__ fwnode; int param_count; int* param; } ;
struct irq_domain {scalar_t__ fwnode; } ;
typedef  enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;
struct TYPE_2__ {struct irq_domain* domain; int /*<<< orphan*/ * ppi_descs; } ;

/* Variables and functions */
 TYPE_1__ gic_data ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d,
				 struct irq_fwspec *fwspec,
				 enum irq_domain_bus_token bus_token)
{
	/* Not for us */
        if (fwspec->fwnode != d->fwnode)
		return 0;

	/* If this is not DT, then we have a single domain */
	if (!FUNC0(fwspec->fwnode))
		return 1;

	/*
	 * If this is a PPI and we have a 4th (non-null) parameter,
	 * then we need to match the partition domain.
	 */
	if (fwspec->param_count >= 4 &&
	    fwspec->param[0] == 1 && fwspec->param[3] != 0 &&
	    gic_data.ppi_descs)
		return d == FUNC1(gic_data.ppi_descs[fwspec->param[1]]);

	return d == gic_data.domain;
}