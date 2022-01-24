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
typedef  int /*<<< orphan*/  u64 ;
struct iommu_domain {scalar_t__ type; } ;
struct device {int /*<<< orphan*/ * dma_ops; } ;

/* Variables and functions */
 scalar_t__ IOMMU_DOMAIN_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct iommu_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  iommu_dma_ops ; 
 struct iommu_domain* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct device *dev, u64 dma_base, u64 size)
{
	struct iommu_domain *domain = FUNC2(dev);

	if (!domain)
		goto out_err;

	/*
	 * The IOMMU core code allocates the default DMA domain, which the
	 * underlying IOMMU driver needs to support via the dma-iommu layer.
	 */
	if (domain->type == IOMMU_DOMAIN_DMA) {
		if (FUNC1(domain, dma_base, size, dev))
			goto out_err;
		dev->dma_ops = &iommu_dma_ops;
	}

	return;
out_err:
	 FUNC3("Failed to set up IOMMU for device %s; retaining platform DMA ops\n",
		 FUNC0(dev));
}