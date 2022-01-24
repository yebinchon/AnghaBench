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
struct pci_dev {int dummy; } ;
struct amd_iommu_device_info {int /*<<< orphan*/  flags; void* max_pasids; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IOMMU_DEVICE_FLAG_ATS_SUP ; 
 int /*<<< orphan*/  AMD_IOMMU_DEVICE_FLAG_EXEC_SUP ; 
 int /*<<< orphan*/  AMD_IOMMU_DEVICE_FLAG_PASID_SUP ; 
 int /*<<< orphan*/  AMD_IOMMU_DEVICE_FLAG_PRIV_SUP ; 
 int /*<<< orphan*/  AMD_IOMMU_DEVICE_FLAG_PRI_SUP ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ATS ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PASID ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PRI ; 
 int PCI_PASID_CAP_EXEC ; 
 int PCI_PASID_CAP_PRIV ; 
 int amd_iommu_max_glx_val ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu_device_info*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 

int FUNC7(struct pci_dev *pdev,
                          struct amd_iommu_device_info *info)
{
	int max_pasids;
	int pos;

	if (pdev == NULL || info == NULL)
		return -EINVAL;

	if (!FUNC0())
		return -EINVAL;

	FUNC1(info, 0, sizeof(*info));

	if (!FUNC3()) {
		pos = FUNC4(pdev, PCI_EXT_CAP_ID_ATS);
		if (pos)
			info->flags |= AMD_IOMMU_DEVICE_FLAG_ATS_SUP;
	}

	pos = FUNC4(pdev, PCI_EXT_CAP_ID_PRI);
	if (pos)
		info->flags |= AMD_IOMMU_DEVICE_FLAG_PRI_SUP;

	pos = FUNC4(pdev, PCI_EXT_CAP_ID_PASID);
	if (pos) {
		int features;

		max_pasids = 1 << (9 * (amd_iommu_max_glx_val + 1));
		max_pasids = FUNC2(max_pasids, (1 << 20));

		info->flags |= AMD_IOMMU_DEVICE_FLAG_PASID_SUP;
		info->max_pasids = FUNC2(FUNC5(pdev), max_pasids);

		features = FUNC6(pdev);
		if (features & PCI_PASID_CAP_EXEC)
			info->flags |= AMD_IOMMU_DEVICE_FLAG_EXEC_SUP;
		if (features & PCI_PASID_CAP_PRIV)
			info->flags |= AMD_IOMMU_DEVICE_FLAG_PRIV_SUP;
	}

	return 0;
}