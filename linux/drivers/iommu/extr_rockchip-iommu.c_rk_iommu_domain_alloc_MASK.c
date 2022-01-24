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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int force_aperture; int /*<<< orphan*/  aperture_end; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct rk_iommu_domain {struct iommu_domain domain; int /*<<< orphan*/ * dt; int /*<<< orphan*/  iommus; int /*<<< orphan*/  dt_lock; int /*<<< orphan*/  iommus_lock; int /*<<< orphan*/  dt_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  NUM_DT_ENTRIES ; 
 int /*<<< orphan*/  SPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rk_iommu_domain* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  dma_dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC9 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC10 (struct rk_iommu_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC12(unsigned type)
{
	struct rk_iommu_domain *rk_domain;

	if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
		return NULL;

	if (!dma_dev)
		return NULL;

	rk_domain = FUNC3(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
	if (!rk_domain)
		return NULL;

	if (type == IOMMU_DOMAIN_DMA &&
	    FUNC8(&rk_domain->domain))
		return NULL;

	/*
	 * rk32xx iommus use a 2 level pagetable.
	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
	 * Allocate one 4 KiB page for each table.
	 */
	rk_domain->dt = (u32 *)FUNC7(GFP_KERNEL | GFP_DMA32);
	if (!rk_domain->dt)
		goto err_put_cookie;

	rk_domain->dt_dma = FUNC4(dma_dev, rk_domain->dt,
					   SPAGE_SIZE, DMA_TO_DEVICE);
	if (FUNC5(dma_dev, rk_domain->dt_dma)) {
		FUNC2(dma_dev, "DMA map error for DT\n");
		goto err_free_dt;
	}

	FUNC10(rk_domain, rk_domain->dt_dma, NUM_DT_ENTRIES);

	FUNC11(&rk_domain->iommus_lock);
	FUNC11(&rk_domain->dt_lock);
	FUNC1(&rk_domain->iommus);

	rk_domain->domain.geometry.aperture_start = 0;
	rk_domain->domain.geometry.aperture_end   = FUNC0(32);
	rk_domain->domain.geometry.force_aperture = true;

	return &rk_domain->domain;

err_free_dt:
	FUNC6((unsigned long)rk_domain->dt);
err_put_cookie:
	if (type == IOMMU_DOMAIN_DMA)
		FUNC9(&rk_domain->domain);

	return NULL;
}