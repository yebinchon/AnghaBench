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
typedef  int /*<<< orphan*/  u32 ;
struct rk_iommu_domain {int /*<<< orphan*/  domain; int /*<<< orphan*/ * dt; int /*<<< orphan*/  dt_dma; int /*<<< orphan*/  iommus; } ;
struct iommu_domain {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ IOMMU_DOMAIN_DMA ; 
 int NUM_DT_ENTRIES ; 
 int /*<<< orphan*/  SPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dma_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct rk_iommu_domain* FUNC8 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC9(struct iommu_domain *domain)
{
	struct rk_iommu_domain *rk_domain = FUNC8(domain);
	int i;

	FUNC0(!FUNC4(&rk_domain->iommus));

	for (i = 0; i < NUM_DT_ENTRIES; i++) {
		u32 dte = rk_domain->dt[i];
		if (FUNC6(dte)) {
			phys_addr_t pt_phys = FUNC7(dte);
			u32 *page_table = FUNC5(pt_phys);
			FUNC1(dma_dev, pt_phys,
					 SPAGE_SIZE, DMA_TO_DEVICE);
			FUNC2((unsigned long)page_table);
		}
	}

	FUNC1(dma_dev, rk_domain->dt_dma,
			 SPAGE_SIZE, DMA_TO_DEVICE);
	FUNC2((unsigned long)rk_domain->dt);

	if (domain->type == IOMMU_DOMAIN_DMA)
		FUNC3(&rk_domain->domain);
}