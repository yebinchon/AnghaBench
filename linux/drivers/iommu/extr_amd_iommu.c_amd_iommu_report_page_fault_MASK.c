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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct iommu_dev_data {int /*<<< orphan*/  rs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct iommu_dev_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,char*,int,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static void FUNC10(u16 devid, u16 domain_id,
					u64 address, int flags)
{
	struct iommu_dev_data *dev_data = NULL;
	struct pci_dev *pdev;

	pdev = FUNC7(0, FUNC0(devid),
					   devid & 0xff);
	if (pdev)
		dev_data = FUNC4(&pdev->dev);

	if (dev_data && FUNC3(&dev_data->rs)) {
		FUNC6(pdev, "Event logged [IO_PAGE_FAULT domain=0x%04x address=0x%llx flags=0x%04x]\n",
			domain_id, address, flags);
	} else if (FUNC9()) {
		FUNC8("Event logged [IO_PAGE_FAULT device=%02x:%02x.%x domain=0x%04x address=0x%llx flags=0x%04x]\n",
			FUNC0(devid), FUNC2(devid), FUNC1(devid),
			domain_id, address, flags);
	}

	if (pdev)
		FUNC5(pdev);
}