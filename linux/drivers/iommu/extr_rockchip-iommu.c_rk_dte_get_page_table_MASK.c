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
typedef  size_t u32 ;
struct rk_iommu_domain {size_t* dt; scalar_t__ dt_dma; int /*<<< orphan*/  dt_lock; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA32 ; 
 int NUM_PT_ENTRIES ; 
 int /*<<< orphan*/  SPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dma_dev ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 size_t FUNC10 (scalar_t__) ; 
 size_t FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct rk_iommu_domain*,scalar_t__,int) ; 

__attribute__((used)) static u32 *FUNC13(struct rk_iommu_domain *rk_domain,
				  dma_addr_t iova)
{
	u32 *page_table, *dte_addr;
	u32 dte_index, dte;
	phys_addr_t pt_phys;
	dma_addr_t pt_dma;

	FUNC1(&rk_domain->dt_lock);

	dte_index = FUNC10(iova);
	dte_addr = &rk_domain->dt[dte_index];
	dte = *dte_addr;
	if (FUNC8(dte))
		goto done;

	page_table = (u32 *)FUNC6(GFP_ATOMIC | GFP_DMA32);
	if (!page_table)
		return FUNC0(-ENOMEM);

	pt_dma = FUNC3(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
	if (FUNC4(dma_dev, pt_dma)) {
		FUNC2(dma_dev, "DMA mapping error while allocating page table\n");
		FUNC5((unsigned long)page_table);
		return FUNC0(-ENOMEM);
	}

	dte = FUNC11(pt_dma);
	*dte_addr = dte;

	FUNC12(rk_domain, pt_dma, NUM_PT_ENTRIES);
	FUNC12(rk_domain,
		       rk_domain->dt_dma + dte_index * sizeof(u32), 1);
done:
	pt_phys = FUNC9(dte);
	return (u32 *)FUNC7(pt_phys);
}