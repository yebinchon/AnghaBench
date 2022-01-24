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
struct iommu_dma_cookie {scalar_t__ type; size_t msi_iova; scalar_t__ fq_domain; struct iova_domain iovad; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ IOMMU_DMA_MSI_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct iova_domain*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct iova_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct iova_domain*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iommu_dma_cookie *cookie,
		dma_addr_t iova, size_t size)
{
	struct iova_domain *iovad = &cookie->iovad;

	/* The MSI case is only ever cleaning up its most recent allocation */
	if (cookie->type == IOMMU_DMA_MSI_COOKIE)
		cookie->msi_iova -= size;
	else if (cookie->fq_domain)	/* non-strict mode */
		FUNC3(iovad, FUNC1(iovad, iova),
				size >> FUNC2(iovad), 0);
	else
		FUNC0(iovad, FUNC1(iovad, iova),
				size >> FUNC2(iovad));
}