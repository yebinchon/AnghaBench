#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct pci_dev {TYPE_1__* bus; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {scalar_t__ number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  __last_alias ; 
 size_t* amd_iommu_alias_table ; 
 TYPE_2__* amd_iommu_dev_table ; 
 scalar_t__* amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 size_t FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 struct pci_dev* FUNC9 (struct device*) ; 

__attribute__((used)) static u16 FUNC10(struct device *dev)
{
	struct pci_dev *pdev = FUNC9(dev);
	u16 devid, ivrs_alias, pci_alias;

	/* The callers make sure that get_device_id() does not fail here */
	devid = FUNC4(dev);

	/* For ACPI HID devices, we simply return the devid as such */
	if (!FUNC3(dev))
		return devid;

	ivrs_alias = amd_iommu_alias_table[devid];

	FUNC7(pdev, __last_alias, &pci_alias);

	if (ivrs_alias == pci_alias)
		return ivrs_alias;

	/*
	 * DMA alias showdown
	 *
	 * The IVRS is fairly reliable in telling us about aliases, but it
	 * can't know about every screwy device.  If we don't have an IVRS
	 * reported alias, use the PCI reported alias.  In that case we may
	 * still need to initialize the rlookup and dev_table entries if the
	 * alias is to a non-existent device.
	 */
	if (ivrs_alias == devid) {
		if (!amd_iommu_rlookup_table[pci_alias]) {
			amd_iommu_rlookup_table[pci_alias] =
				amd_iommu_rlookup_table[devid];
			FUNC5(amd_iommu_dev_table[pci_alias].data,
			       amd_iommu_dev_table[devid].data,
			       sizeof(amd_iommu_dev_table[pci_alias].data));
		}

		return pci_alias;
	}

	FUNC8(pdev, "Using IVRS reported alias %02x:%02x.%d "
		"for device [%04x:%04x], kernel reported alias "
		"%02x:%02x.%d\n", FUNC0(ivrs_alias), FUNC2(ivrs_alias),
		FUNC1(ivrs_alias), pdev->vendor, pdev->device,
		FUNC0(pci_alias), FUNC2(pci_alias),
		FUNC1(pci_alias));

	/*
	 * If we don't have a PCI DMA alias and the IVRS alias is on the same
	 * bus, then the IVRS table may know about a quirk that we don't.
	 */
	if (pci_alias == devid &&
	    FUNC0(ivrs_alias) == pdev->bus->number) {
		FUNC6(pdev, ivrs_alias & 0xff);
		FUNC8(pdev, "Added PCI DMA alias %02x.%d\n",
			FUNC2(ivrs_alias), FUNC1(ivrs_alias));
	}

	return ivrs_alias;
}