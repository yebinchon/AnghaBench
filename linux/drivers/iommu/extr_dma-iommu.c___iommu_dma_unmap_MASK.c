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
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {struct iommu_dma_cookie* iova_cookie; } ;
struct iommu_dma_cookie {int /*<<< orphan*/  fq_domain; struct iova_domain iovad; } ;
struct device {int dummy; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_dma_cookie*,size_t,size_t) ; 
 struct iommu_domain* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_iotlb_gather*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_domain*,struct iommu_iotlb_gather*) ; 
 size_t FUNC5 (struct iommu_domain*,size_t,size_t,struct iommu_iotlb_gather*) ; 
 size_t FUNC6 (struct iova_domain*,size_t) ; 
 size_t FUNC7 (struct iova_domain*,size_t) ; 

__attribute__((used)) static void FUNC8(struct device *dev, dma_addr_t dma_addr,
		size_t size)
{
	struct iommu_domain *domain = FUNC2(dev);
	struct iommu_dma_cookie *cookie = domain->iova_cookie;
	struct iova_domain *iovad = &cookie->iovad;
	size_t iova_off = FUNC7(iovad, dma_addr);
	struct iommu_iotlb_gather iotlb_gather;
	size_t unmapped;

	dma_addr -= iova_off;
	size = FUNC6(iovad, size + iova_off);
	FUNC3(&iotlb_gather);

	unmapped = FUNC5(domain, dma_addr, size, &iotlb_gather);
	FUNC0(unmapped != size);

	if (!cookie->fq_domain)
		FUNC4(domain, &iotlb_gather);
	FUNC1(cookie, dma_addr, size);
}