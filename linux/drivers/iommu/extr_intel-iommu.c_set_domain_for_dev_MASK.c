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
typedef  int u8 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct intel_iommu {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct intel_iommu* FUNC2 (struct device*,int*,int*) ; 
 struct dmar_domain* FUNC3 (struct intel_iommu*,int,int,struct device*,struct dmar_domain*) ; 
 int /*<<< orphan*/  get_last_alias ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static struct dmar_domain *FUNC6(struct device *dev,
					      struct dmar_domain *domain)
{
	struct intel_iommu *iommu;
	struct dmar_domain *tmp;
	u16 req_id, dma_alias;
	u8 bus, devfn;

	iommu = FUNC2(dev, &bus, &devfn);
	if (!iommu)
		return NULL;

	req_id = ((u16)bus << 8) | devfn;

	if (FUNC1(dev)) {
		struct pci_dev *pdev = FUNC5(dev);

		FUNC4(pdev, get_last_alias, &dma_alias);

		/* register PCI DMA alias device */
		if (req_id != dma_alias) {
			tmp = FUNC3(iommu, FUNC0(dma_alias),
					dma_alias & 0xff, NULL, domain);

			if (!tmp || tmp != domain)
				return tmp;
		}
	}

	tmp = FUNC3(iommu, bus, devfn, dev, domain);
	if (!tmp || tmp != domain)
		return tmp;

	return domain;
}