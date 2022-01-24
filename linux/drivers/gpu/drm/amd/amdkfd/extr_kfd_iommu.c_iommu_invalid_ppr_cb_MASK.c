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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct kfd_dev {int dummy; } ;

/* Variables and functions */
 int AMD_IOMMU_INV_PRI_RSP_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PPR_FAULT_EXEC ; 
 int PPR_FAULT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int) ; 
 int /*<<< orphan*/  kfd_device ; 
 struct kfd_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct kfd_dev*,int,unsigned long,int,int) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, int pasid,
		unsigned long address, u16 flags)
{
	struct kfd_dev *dev;

	FUNC4(kfd_device,
			"Invalid PPR device %x:%x.%x pasid %d address 0x%lX flags 0x%X",
			FUNC0(pdev->devfn),
			FUNC2(pdev->devfn),
			FUNC1(pdev->devfn),
			pasid,
			address,
			flags);

	dev = FUNC5(pdev);
	if (!FUNC3(!dev))
		FUNC6(dev, pasid, address,
			flags & PPR_FAULT_WRITE, flags & PPR_FAULT_EXEC);

	return AMD_IOMMU_INV_PRI_RSP_INVALID;
}