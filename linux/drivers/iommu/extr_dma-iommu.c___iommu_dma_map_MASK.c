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
struct iova_domain {int dummy; } ;
struct iommu_domain {struct iommu_dma_cookie* iova_cookie; } ;
struct iommu_dma_cookie {struct iova_domain iovad; } ;
struct device {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_MAPPING_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct iommu_domain*,size_t,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_dma_cookie*,scalar_t__,size_t) ; 
 struct iommu_domain* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct iommu_domain*,scalar_t__,scalar_t__,size_t,int) ; 
 size_t FUNC5 (struct iova_domain*,size_t) ; 
 size_t FUNC6 (struct iova_domain*,scalar_t__) ; 

__attribute__((used)) static dma_addr_t FUNC7(struct device *dev, phys_addr_t phys,
		size_t size, int prot)
{
	struct iommu_domain *domain = FUNC3(dev);
	struct iommu_dma_cookie *cookie = domain->iova_cookie;
	struct iova_domain *iovad = &cookie->iovad;
	size_t iova_off = FUNC6(iovad, phys);
	dma_addr_t iova;

	size = FUNC5(iovad, size + iova_off);

	iova = FUNC1(domain, size, FUNC0(dev), dev);
	if (!iova)
		return DMA_MAPPING_ERROR;

	if (FUNC4(domain, iova, phys - iova_off, size, prot)) {
		FUNC2(cookie, iova, size);
		return DMA_MAPPING_ERROR;
	}
	return iova + iova_off;
}