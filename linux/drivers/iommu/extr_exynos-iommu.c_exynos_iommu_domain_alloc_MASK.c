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
typedef  int /*<<< orphan*/  sysmmu_pte_t ;
struct TYPE_2__ {unsigned long aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct exynos_iommu_domain {short* lv2entcnt; struct iommu_domain domain; int /*<<< orphan*/ * pgtable; int /*<<< orphan*/  clients; int /*<<< orphan*/  pgtablelock; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  LV1TABLE_SIZE ; 
 int NUM_LV1ENTRIES ; 
 scalar_t__ PG_ENT_SHIFT ; 
 int /*<<< orphan*/  ZERO_LV2LINK ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  dma_dev ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 
 scalar_t__ FUNC6 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC7 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC8 (struct exynos_iommu_domain*) ; 
 struct exynos_iommu_domain* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC12(unsigned type)
{
	struct exynos_iommu_domain *domain;
	dma_addr_t handle;
	int i;

	/* Check if correct PTE offsets are initialized */
	FUNC0(PG_ENT_SHIFT < 0 || !dma_dev);

	domain = FUNC9(sizeof(*domain), GFP_KERNEL);
	if (!domain)
		return NULL;

	if (type == IOMMU_DOMAIN_DMA) {
		if (FUNC6(&domain->domain) != 0)
			goto err_pgtable;
	} else if (type != IOMMU_DOMAIN_UNMANAGED) {
		goto err_pgtable;
	}

	domain->pgtable = (sysmmu_pte_t *)FUNC2(GFP_KERNEL, 2);
	if (!domain->pgtable)
		goto err_dma_cookie;

	domain->lv2entcnt = (short *)FUNC2(GFP_KERNEL | __GFP_ZERO, 1);
	if (!domain->lv2entcnt)
		goto err_counter;

	/* Workaround for System MMU v3.3 to prevent caching 1MiB mapping */
	for (i = 0; i < NUM_LV1ENTRIES; i++)
		domain->pgtable[i] = ZERO_LV2LINK;

	handle = FUNC3(dma_dev, domain->pgtable, LV1TABLE_SIZE,
				DMA_TO_DEVICE);
	/* For mapping page table entries we rely on dma == phys */
	FUNC0(handle != FUNC11(domain->pgtable));
	if (FUNC4(dma_dev, handle))
		goto err_lv2ent;

	FUNC10(&domain->lock);
	FUNC10(&domain->pgtablelock);
	FUNC1(&domain->clients);

	domain->domain.geometry.aperture_start = 0;
	domain->domain.geometry.aperture_end   = ~0UL;
	domain->domain.geometry.force_aperture = true;

	return &domain->domain;

err_lv2ent:
	FUNC5((unsigned long)domain->lv2entcnt, 1);
err_counter:
	FUNC5((unsigned long)domain->pgtable, 2);
err_dma_cookie:
	if (type == IOMMU_DOMAIN_DMA)
		FUNC7(&domain->domain);
err_pgtable:
	FUNC8(domain);
	return NULL;
}