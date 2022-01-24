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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; struct pci_bus* bus; } ;
struct pci_bus {struct pci_dev* self; struct pci_bus* parent; } ;
struct iommu_group {int dummy; } ;
struct group_for_pci_data {struct pci_dev* pdev; struct iommu_group* group; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct iommu_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_ACS_FLAGS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct iommu_group* FUNC3 (struct pci_dev*,unsigned long*) ; 
 int /*<<< orphan*/  get_pci_alias_or_group ; 
 struct iommu_group* FUNC4 (struct pci_dev*,unsigned long*) ; 
 struct iommu_group* FUNC5 () ; 
 struct iommu_group* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,struct group_for_pci_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_bus*) ; 
 struct pci_dev* FUNC10 (struct device*) ; 

struct iommu_group *FUNC11(struct device *dev)
{
	struct pci_dev *pdev = FUNC10(dev);
	struct group_for_pci_data data;
	struct pci_bus *bus;
	struct iommu_group *group = NULL;
	u64 devfns[4] = { 0 };

	if (FUNC1(!FUNC2(dev)))
		return FUNC0(-EINVAL);

	/*
	 * Find the upstream DMA alias for the device.  A device must not
	 * be aliased due to topology in order to have its own IOMMU group.
	 * If we find an alias along the way that already belongs to a
	 * group, use it.
	 */
	if (FUNC8(pdev, get_pci_alias_or_group, &data))
		return data.group;

	pdev = data.pdev;

	/*
	 * Continue upstream from the point of minimum IOMMU granularity
	 * due to aliases to the point where devices are protected from
	 * peer-to-peer DMA by PCI ACS.  Again, if we find an existing
	 * group, use it.
	 */
	for (bus = pdev->bus; !FUNC9(bus); bus = bus->parent) {
		if (!bus->self)
			continue;

		if (FUNC7(bus->self, NULL, REQ_ACS_FLAGS))
			break;

		pdev = bus->self;

		group = FUNC6(&pdev->dev);
		if (group)
			return group;
	}

	/*
	 * Look for existing groups on device aliases.  If we alias another
	 * device or another device aliases us, use the same group.
	 */
	group = FUNC3(pdev, (unsigned long *)devfns);
	if (group)
		return group;

	/*
	 * Look for existing groups on non-isolated functions on the same
	 * slot and aliases of those funcions, if any.  No need to clear
	 * the search bitmap, the tested devfns are still valid.
	 */
	group = FUNC4(pdev, (unsigned long *)devfns);
	if (group)
		return group;

	/* No shared group found, allocate new */
	return FUNC5();
}