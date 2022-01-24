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
struct TYPE_2__ {size_t shift; int /*<<< orphan*/  domain; int /*<<< orphan*/  limit; } ;
struct tegra_drm {TYPE_1__ carveout; scalar_t__ domain; } ;
struct iova {int dummy; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 size_t FUNC1 (size_t) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iova*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct iova* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iova*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

void *FUNC11(struct tegra_drm *tegra, size_t size, dma_addr_t *dma)
{
	struct iova *alloc;
	void *virt;
	gfp_t gfp;
	int err;

	if (tegra->domain)
		size = FUNC8(&tegra->carveout.domain, size);
	else
		size = FUNC1(size);

	gfp = GFP_KERNEL | __GFP_ZERO;
	if (!tegra->domain) {
		/*
		 * Many units only support 32-bit addresses, even on 64-bit
		 * SoCs. If there is no IOMMU to translate into a 32-bit IO
		 * virtual address space, force allocations to be in the
		 * lower 32-bit range.
		 */
		gfp |= GFP_DMA;
	}

	virt = (void *)FUNC3(gfp, FUNC6(size));
	if (!virt)
		return FUNC0(-ENOMEM);

	if (!tegra->domain) {
		/*
		 * If IOMMU is disabled, devices address physical memory
		 * directly.
		 */
		*dma = FUNC10(virt);
		return virt;
	}

	alloc = FUNC4(&tegra->carveout.domain,
			   size >> tegra->carveout.shift,
			   tegra->carveout.limit, true);
	if (!alloc) {
		err = -EBUSY;
		goto free_pages;
	}

	*dma = FUNC9(&tegra->carveout.domain, alloc);
	err = FUNC7(tegra->domain, *dma, FUNC10(virt),
			size, IOMMU_READ | IOMMU_WRITE);
	if (err < 0)
		goto free_iova;

	return virt;

free_iova:
	FUNC2(&tegra->carveout.domain, alloc);
free_pages:
	FUNC5((unsigned long)virt, FUNC6(size));

	return FUNC0(err);
}