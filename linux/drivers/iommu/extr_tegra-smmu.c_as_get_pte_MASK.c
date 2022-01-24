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
struct tegra_smmu_as {struct page** pts; int /*<<< orphan*/  pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SMMU_PDE_ATTR ; 
 int SMMU_PDE_NEXT ; 
 int /*<<< orphan*/  SMMU_SIZE_PT ; 
 int __GFP_DMA ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_smmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_smmu_as*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC12(struct tegra_smmu_as *as, dma_addr_t iova,
		       dma_addr_t *dmap)
{
	unsigned int pde = FUNC6(iova);
	struct tegra_smmu *smmu = as->smmu;

	if (!as->pts[pde]) {
		struct page *page;
		dma_addr_t dma;

		page = FUNC2(GFP_KERNEL | __GFP_DMA | __GFP_ZERO);
		if (!page)
			return NULL;

		dma = FUNC3(smmu->dev, page, 0, SMMU_SIZE_PT,
				   DMA_TO_DEVICE);
		if (FUNC4(smmu->dev, dma)) {
			FUNC1(page);
			return NULL;
		}

		if (!FUNC8(smmu, dma)) {
			FUNC5(smmu->dev, dma, SMMU_SIZE_PT,
				       DMA_TO_DEVICE);
			FUNC1(page);
			return NULL;
		}

		as->pts[pde] = page;

		FUNC11(as, iova, FUNC0(dma, SMMU_PDE_ATTR |
							      SMMU_PDE_NEXT));

		*dmap = dma;
	} else {
		u32 *pd = FUNC7(as->pd);

		*dmap = FUNC9(pd[pde]);
	}

	return FUNC10(as->pts[pde], iova);
}