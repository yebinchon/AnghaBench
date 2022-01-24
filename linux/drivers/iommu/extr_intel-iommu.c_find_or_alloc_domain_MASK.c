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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct intel_iommu {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct device_domain_info {struct dmar_domain* domain; struct intel_iommu* iommu; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dmar_domain* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 struct intel_iommu* FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device_domain_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*) ; 
 scalar_t__ FUNC6 (struct dmar_domain*,struct intel_iommu*,int) ; 
 int /*<<< orphan*/  get_last_alias ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC11 (struct device*) ; 

__attribute__((used)) static struct dmar_domain *FUNC12(struct device *dev, int gaw)
{
	struct device_domain_info *info;
	struct dmar_domain *domain = NULL;
	struct intel_iommu *iommu;
	u16 dma_alias;
	unsigned long flags;
	u8 bus, devfn;

	iommu = FUNC3(dev, &bus, &devfn);
	if (!iommu)
		return NULL;

	if (FUNC2(dev)) {
		struct pci_dev *pdev = FUNC11(dev);

		FUNC8(pdev, get_last_alias, &dma_alias);

		FUNC9(&device_domain_lock, flags);
		info = FUNC4(FUNC7(pdev->bus),
						      FUNC0(dma_alias),
						      dma_alias & 0xff);
		if (info) {
			iommu = info->iommu;
			domain = info->domain;
		}
		FUNC10(&device_domain_lock, flags);

		/* DMA alias already has a domain, use it */
		if (info)
			goto out;
	}

	/* Allocate and initialize new domain for the device */
	domain = FUNC1(0);
	if (!domain)
		return NULL;
	if (FUNC6(domain, iommu, gaw)) {
		FUNC5(domain);
		return NULL;
	}

out:
	return domain;
}