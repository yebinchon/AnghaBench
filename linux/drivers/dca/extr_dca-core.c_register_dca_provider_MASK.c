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
struct dca_domain {int /*<<< orphan*/  dca_providers; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCA_PROVIDER_ADD ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dca_domain* FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  dca_domains ; 
 struct dca_domain* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dca_lock ; 
 struct pci_bus* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  dca_provider_chain ; 
 scalar_t__ dca_providers_blocked ; 
 int FUNC4 (struct dca_provider*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dca_provider*) ; 
 int /*<<< orphan*/  FUNC6 (struct dca_domain*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct dca_provider *dca, struct device *dev)
{
	int err;
	unsigned long flags;
	struct dca_domain *domain, *newdomain = NULL;

	FUNC8(&dca_lock, flags);
	if (dca_providers_blocked) {
		FUNC9(&dca_lock, flags);
		return -ENODEV;
	}
	FUNC9(&dca_lock, flags);

	err = FUNC4(dca, dev);
	if (err)
		return err;

	FUNC8(&dca_lock, flags);
	domain = FUNC2(dev);
	if (!domain) {
		struct pci_bus *rc;

		if (dca_providers_blocked) {
			FUNC9(&dca_lock, flags);
			FUNC5(dca);
			FUNC10();
			return -ENODEV;
		}

		FUNC9(&dca_lock, flags);
		rc = FUNC3(dev);
		newdomain = FUNC1(rc);
		if (!newdomain)
			return -ENODEV;
		FUNC8(&dca_lock, flags);
		/* Recheck, we might have raced after dropping the lock */
		domain = FUNC2(dev);
		if (!domain) {
			domain = newdomain;
			newdomain = NULL;
			FUNC7(&domain->node, &dca_domains);
		}
	}
	FUNC7(&dca->node, &domain->dca_providers);
	FUNC9(&dca_lock, flags);

	FUNC0(&dca_provider_chain,
				     DCA_PROVIDER_ADD, NULL);
	FUNC6(newdomain);
	return 0;
}