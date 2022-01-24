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
struct tegra_smmu_as {int /*<<< orphan*/  id; int /*<<< orphan*/  pd_dma; int /*<<< orphan*/  pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_smmu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_smmu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct tegra_smmu_as *as, unsigned long iova,
			       u32 value)
{
	unsigned int pd_index = FUNC1(iova);
	struct tegra_smmu *smmu = as->smmu;
	u32 *pd = FUNC2(as->pd);
	unsigned long offset = pd_index * sizeof(*pd);

	/* Set the page directory entry first */
	pd[pd_index] = value;

	/* The flush the page directory entry from caches */
	FUNC0(smmu->dev, as->pd_dma, offset,
					 sizeof(*pd), DMA_TO_DEVICE);

	/* And flush the iommu */
	FUNC4(smmu, as->pd_dma, offset);
	FUNC5(smmu, as->id, iova);
	FUNC3(smmu);
}