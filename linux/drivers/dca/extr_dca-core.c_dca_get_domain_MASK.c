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
struct dca_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dca_domains ; 
 struct dca_domain* FUNC0 (struct pci_bus*) ; 
 struct pci_bus* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int dca_providers_blocked ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dca_domain *FUNC4(struct device *dev)
{
	struct pci_bus *rc;
	struct dca_domain *domain;

	rc = FUNC1(dev);
	domain = FUNC0(rc);

	if (!domain) {
		if (FUNC2(dev) && !FUNC3(&dca_domains))
			dca_providers_blocked = 1;
	}

	return domain;
}