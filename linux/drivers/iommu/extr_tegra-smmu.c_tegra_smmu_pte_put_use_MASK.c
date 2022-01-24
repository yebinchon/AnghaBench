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
struct tegra_smmu_as {scalar_t__* count; struct page** pts; int /*<<< orphan*/  pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SMMU_SIZE_PT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_smmu_as*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tegra_smmu_as *as, unsigned long iova)
{
	unsigned int pde = FUNC2(iova);
	struct page *page = as->pts[pde];

	/*
	 * When no entries in this page table are used anymore, return the
	 * memory page to the system.
	 */
	if (--as->count[pde] == 0) {
		struct tegra_smmu *smmu = as->smmu;
		u32 *pd = FUNC3(as->pd);
		dma_addr_t pte_dma = FUNC4(pd[pde]);

		FUNC5(as, iova, 0);

		FUNC1(smmu->dev, pte_dma, SMMU_SIZE_PT, DMA_TO_DEVICE);
		FUNC0(page);
		as->pts[pde] = NULL;
	}
}