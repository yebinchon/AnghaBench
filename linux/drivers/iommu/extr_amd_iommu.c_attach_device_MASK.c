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
struct protection_domain {int flags; int /*<<< orphan*/  lock; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int enabled; void* qdep; } ;
struct iommu_dev_data {int /*<<< orphan*/  lock; TYPE_1__ ats; int /*<<< orphan*/  pri_tlp; scalar_t__ iommu_v2; int /*<<< orphan*/  passthrough; int /*<<< orphan*/ * domain; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int PD_IOMMUV2_MASK ; 
 scalar_t__ amd_iommu_iotlb_sup ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_dev_data*,struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct protection_domain*) ; 
 struct iommu_dev_data* FUNC4 (struct device*) ; 
 void* FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC13 (struct device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev,
			 struct protection_domain *domain)
{
	struct pci_dev *pdev;
	struct iommu_dev_data *dev_data;
	unsigned long flags;
	int ret;

	FUNC10(&domain->lock, flags);

	dev_data = FUNC4(dev);

	FUNC9(&dev_data->lock);

	ret = -EBUSY;
	if (dev_data->domain != NULL)
		goto out;

	if (!FUNC0(dev))
		goto skip_ats_check;

	pdev = FUNC13(dev);
	if (domain->flags & PD_IOMMUV2_MASK) {
		ret = -EINVAL;
		if (!dev_data->passthrough)
			goto out;

		if (dev_data->iommu_v2) {
			if (FUNC8(pdev) != 0)
				goto out;

			dev_data->ats.enabled = true;
			dev_data->ats.qdep    = FUNC5(pdev);
			dev_data->pri_tlp     = FUNC7(pdev);
		}
	} else if (amd_iommu_iotlb_sup &&
		   FUNC6(pdev, PAGE_SHIFT) == 0) {
		dev_data->ats.enabled = true;
		dev_data->ats.qdep    = FUNC5(pdev);
	}

skip_ats_check:
	ret = 0;

	FUNC1(dev_data, domain);

	/*
	 * We might boot into a crash-kernel here. The crashed kernel
	 * left the caches in the IOMMU dirty. So we have to flush
	 * here to evict all dirty stuff.
	 */
	FUNC3(domain);

	FUNC2(domain);

out:
	FUNC11(&dev_data->lock);

	FUNC12(&domain->lock, flags);

	return ret;
}