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
struct pci_dev {int /*<<< orphan*/  untrusted; } ;
struct device_domain_info {int pasid_supported; int pasid_enabled; int pri_enabled; int ats_enabled; int /*<<< orphan*/  ats_qdep; int /*<<< orphan*/  domain; scalar_t__ ats_supported; scalar_t__ pri_supported; scalar_t__ pfsid; TYPE_1__* iommu; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ecap; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTD_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 struct pci_dev* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct device_domain_info *info)
{
	struct pci_dev *pdev;

	FUNC0(&device_domain_lock);

	if (!info || !FUNC1(info->dev))
		return;

	pdev = FUNC13(info->dev);
	/* For IOMMU that supports device IOTLB throttling (DIT), we assign
	 * PFSID to the invalidation desc of a VF such that IOMMU HW can gauge
	 * queue depth at PF level. If DIT is not set, PFSID will be treated as
	 * reserved, which should be set to 0.
	 */
	if (!FUNC3(info->iommu->ecap))
		info->pfsid = 0;
	else {
		struct pci_dev *pf_pdev;

		/* pdev will be returned if device is not a vf */
		pf_pdev = FUNC10(pdev);
		info->pfsid = FUNC6(pf_pdev);
	}

#ifdef CONFIG_INTEL_IOMMU_SVM
	/* The PCIe spec, in its wisdom, declares that the behaviour of
	   the device if you enable PASID support after ATS support is
	   undefined. So always enable PASID support on devices which
	   have it, even if we can't yet know if we're ever going to
	   use it. */
	if (info->pasid_supported && !pci_enable_pasid(pdev, info->pasid_supported & ~1))
		info->pasid_enabled = 1;

	if (info->pri_supported &&
	    (info->pasid_enabled ? pci_prg_resp_pasid_required(pdev) : 1)  &&
	    !pci_reset_pri(pdev) && !pci_enable_pri(pdev, 32))
		info->pri_enabled = 1;
#endif
	if (!pdev->untrusted && info->ats_supported &&
	    FUNC4(pdev) &&
	    !FUNC7(pdev, VTD_PAGE_SHIFT)) {
		info->ats_enabled = 1;
		FUNC2(info->domain);
		info->ats_qdep = FUNC5(pdev);
	}
}