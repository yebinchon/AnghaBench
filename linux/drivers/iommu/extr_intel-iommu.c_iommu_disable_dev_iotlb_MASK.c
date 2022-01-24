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
struct device_domain_info {scalar_t__ pasid_enabled; scalar_t__ pri_enabled; int /*<<< orphan*/  domain; scalar_t__ ats_enabled; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device_domain_info *info)
{
	struct pci_dev *pdev;

	FUNC0(&device_domain_lock);

	if (!FUNC1(info->dev))
		return;

	pdev = FUNC6(info->dev);

	if (info->ats_enabled) {
		FUNC3(pdev);
		info->ats_enabled = 0;
		FUNC2(info->domain);
	}
#ifdef CONFIG_INTEL_IOMMU_SVM
	if (info->pri_enabled) {
		pci_disable_pri(pdev);
		info->pri_enabled = 0;
	}
	if (info->pasid_enabled) {
		pci_disable_pasid(pdev);
		info->pasid_enabled = 0;
	}
#endif
}