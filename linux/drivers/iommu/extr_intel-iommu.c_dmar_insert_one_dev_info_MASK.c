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
struct intel_iommu {int /*<<< orphan*/  lock; int /*<<< orphan*/  segment; int /*<<< orphan*/  ecap; } ;
struct dmar_domain {int /*<<< orphan*/  devices; } ;
struct device_domain_info {int bus; int devfn; int ats_supported; int pasid_supported; int pri_supported; int /*<<< orphan*/  global; int /*<<< orphan*/  link; struct device* dev; struct dmar_domain* domain; int /*<<< orphan*/  auxiliary_domains; scalar_t__ auxd_enabled; int /*<<< orphan*/ * pasid_table; struct intel_iommu* iommu; scalar_t__ ats_qdep; scalar_t__ pri_enabled; scalar_t__ pasid_enabled; scalar_t__ ats_enabled; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PASID_RID2PASID ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ATS ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PRI ; 
 struct device_domain_info* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  device_domain_list ; 
 int /*<<< orphan*/  device_domain_lock ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct device_domain_info* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct dmar_domain*,struct intel_iommu*) ; 
 scalar_t__ FUNC8 (struct dmar_domain*,struct device*) ; 
 scalar_t__ FUNC9 (struct dmar_domain*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct dmar_domain* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_domain_info*) ; 
 scalar_t__ hw_pass_through ; 
 int FUNC14 (struct device*) ; 
 int FUNC15 (struct intel_iommu*,struct dmar_domain*,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct intel_iommu*,struct dmar_domain*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct pci_dev*) ; 
 scalar_t__ FUNC22 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC27 (struct device*) ; 

__attribute__((used)) static struct dmar_domain *FUNC28(struct intel_iommu *iommu,
						    int bus, int devfn,
						    struct device *dev,
						    struct dmar_domain *domain)
{
	struct dmar_domain *found = NULL;
	struct device_domain_info *info;
	unsigned long flags;
	int ret;

	info = FUNC1();
	if (!info)
		return NULL;

	info->bus = bus;
	info->devfn = devfn;
	info->ats_supported = info->pasid_supported = info->pri_supported = 0;
	info->ats_enabled = info->pasid_enabled = info->pri_enabled = 0;
	info->ats_qdep = 0;
	info->dev = dev;
	info->domain = domain;
	info->iommu = iommu;
	info->pasid_table = NULL;
	info->auxd_enabled = 0;
	FUNC0(&info->auxiliary_domains);

	if (dev && FUNC3(dev)) {
		struct pci_dev *pdev = FUNC27(info->dev);

		if (!pdev->untrusted &&
		    !FUNC19() &&
		    FUNC10(iommu->ecap) &&
		    FUNC20(pdev, PCI_EXT_CAP_ID_ATS) &&
		    FUNC4(pdev))
			info->ats_supported = 1;

		if (FUNC22(iommu)) {
			if (FUNC18(iommu)) {
				int features = FUNC21(pdev);
				if (features >= 0)
					info->pasid_supported = features | 1;
			}

			if (info->ats_supported && FUNC11(iommu->ecap) &&
			    FUNC20(pdev, PCI_EXT_CAP_ID_PRI))
				info->pri_supported = 1;
		}
	}

	FUNC24(&device_domain_lock, flags);
	if (dev)
		found = FUNC12(dev);

	if (!found) {
		struct device_domain_info *info2;
		info2 = FUNC6(iommu->segment, bus, devfn);
		if (info2) {
			found      = info2->domain;
			info2->dev = dev;
		}
	}

	if (found) {
		FUNC26(&device_domain_lock, flags);
		FUNC13(info);
		/* Caller must free the original domain */
		return found;
	}

	FUNC23(&iommu->lock);
	ret = FUNC7(domain, iommu);
	FUNC25(&iommu->lock);

	if (ret) {
		FUNC26(&device_domain_lock, flags);
		FUNC13(info);
		return NULL;
	}

	FUNC17(&info->link, &domain->devices);
	FUNC17(&info->global, &device_domain_list);
	if (dev)
		dev->archdata.iommu = info;
	FUNC26(&device_domain_lock, flags);

	/* PASID table is mandatory for a PCI device in scalable mode. */
	if (dev && FUNC3(dev) && FUNC22(iommu)) {
		ret = FUNC14(dev);
		if (ret) {
			FUNC2(dev, "PASID table allocation failed\n");
			FUNC5(dev);
			return NULL;
		}

		/* Setup the PASID entry for requests without PASID: */
		FUNC23(&iommu->lock);
		if (hw_pass_through && FUNC9(domain))
			ret = FUNC15(iommu, domain,
					dev, PASID_RID2PASID);
		else
			ret = FUNC16(iommu, domain,
					dev, PASID_RID2PASID);
		FUNC25(&iommu->lock);
		if (ret) {
			FUNC2(dev, "Setup RID2PASID failed\n");
			FUNC5(dev);
			return NULL;
		}
	}

	if (dev && FUNC8(domain, dev)) {
		FUNC2(dev, "Domain context map failed\n");
		FUNC5(dev);
		return NULL;
	}

	return domain;
}