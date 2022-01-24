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
struct tegra_smmu_as {int /*<<< orphan*/  id; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_smmu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct tegra_smmu_as *as, unsigned long iova,
			       u32 *pte, dma_addr_t pte_dma, u32 val)
{
	struct tegra_smmu *smmu = as->smmu;
	unsigned long offset = FUNC1(pte);

	*pte = val;

	FUNC0(smmu->dev, pte_dma, offset,
					 4, DMA_TO_DEVICE);
	FUNC3(smmu, pte_dma, offset);
	FUNC4(smmu, as->id, iova);
	FUNC2(smmu);
}