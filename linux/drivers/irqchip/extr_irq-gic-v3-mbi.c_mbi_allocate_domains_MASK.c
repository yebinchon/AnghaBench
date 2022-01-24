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
struct irq_domain {int /*<<< orphan*/  fwnode; struct irq_domain* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_NEXUS ; 
 int ENOMEM ; 
 struct irq_domain* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct irq_domain*,struct irq_domain**) ; 
 int /*<<< orphan*/  mbi_domain_ops ; 
 int /*<<< orphan*/  mbi_pmsi_domain_info ; 
 struct irq_domain* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct irq_domain*) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *parent)
{
	struct irq_domain *nexus_domain, *pci_domain, *plat_domain;
	int err;

	nexus_domain = FUNC0(parent->fwnode,
					      &mbi_domain_ops, NULL);
	if (!nexus_domain)
		return -ENOMEM;

	FUNC2(nexus_domain, DOMAIN_BUS_NEXUS);
	nexus_domain->parent = parent;

	err = FUNC3(nexus_domain, &pci_domain);

	plat_domain = FUNC4(parent->fwnode,
						     &mbi_pmsi_domain_info,
						     nexus_domain);

	if (err || !plat_domain) {
		if (plat_domain)
			FUNC1(plat_domain);
		if (pci_domain)
			FUNC1(pci_domain);
		FUNC1(nexus_domain);
		return -ENOMEM;
	}

	return 0;
}