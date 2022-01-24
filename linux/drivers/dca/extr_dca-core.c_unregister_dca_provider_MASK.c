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
struct pci_bus {int dummy; } ;
struct device {int dummy; } ;
struct dca_provider {int /*<<< orphan*/  node; } ;
struct dca_domain {int /*<<< orphan*/  dca_providers; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCA_PROVIDER_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dca_domains ; 
 struct dca_domain* FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct dca_domain*) ; 
 int /*<<< orphan*/  dca_lock ; 
 struct pci_bus* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  dca_provider_chain ; 
 int /*<<< orphan*/  FUNC4 (struct dca_provider*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct dca_provider *dca, struct device *dev)
{
	unsigned long flags;
	struct pci_bus *pci_rc;
	struct dca_domain *domain;

	FUNC0(&dca_provider_chain,
				     DCA_PROVIDER_REMOVE, NULL);

	FUNC7(&dca_lock, flags);

	if (FUNC6(&dca_domains)) {
		FUNC8(&dca_lock, flags);
		return;
	}

	FUNC5(&dca->node);

	pci_rc = FUNC3(dev);
	domain = FUNC1(pci_rc);
	if (FUNC6(&domain->dca_providers))
		FUNC2(domain);

	FUNC8(&dca_lock, flags);

	FUNC4(dca);
}