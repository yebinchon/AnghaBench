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
struct msi_desc {int /*<<< orphan*/ * iommu_cookie; } ;
struct iommu_domain {struct iommu_dma_cookie* iova_cookie; } ;
struct iommu_dma_msi_page {int dummy; } ;
struct iommu_dma_cookie {int /*<<< orphan*/  msi_lock; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct iommu_dma_msi_page* FUNC0 (struct device*,int /*<<< orphan*/ ,struct iommu_domain*) ; 
 struct iommu_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct msi_desc*,struct iommu_dma_msi_page*) ; 
 struct device* FUNC3 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct msi_desc *desc, phys_addr_t msi_addr)
{
	struct device *dev = FUNC3(desc);
	struct iommu_domain *domain = FUNC1(dev);
	struct iommu_dma_cookie *cookie;
	struct iommu_dma_msi_page *msi_page;
	unsigned long flags;

	if (!domain || !domain->iova_cookie) {
		desc->iommu_cookie = NULL;
		return 0;
	}

	cookie = domain->iova_cookie;

	/*
	 * We disable IRQs to rule out a possible inversion against
	 * irq_desc_lock if, say, someone tries to retarget the affinity
	 * of an MSI from within an IPI handler.
	 */
	FUNC4(&cookie->msi_lock, flags);
	msi_page = FUNC0(dev, msi_addr, domain);
	FUNC5(&cookie->msi_lock, flags);

	FUNC2(desc, msi_page);

	if (!msi_page)
		return -ENOMEM;
	return 0;
}