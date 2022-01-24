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
typedef  int u32 ;
struct tegra_smmu_as {scalar_t__ use_count; int id; int /*<<< orphan*/  pd_dma; struct tegra_smmu* smmu; int /*<<< orphan*/  attr; int /*<<< orphan*/  pd; } ;
struct tegra_smmu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMMU_PTB_ASID ; 
 int /*<<< orphan*/  SMMU_PTB_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMMU_SIZE_PD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_smmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_smmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_smmu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_smmu*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct tegra_smmu*,int*) ; 

__attribute__((used)) static int FUNC10(struct tegra_smmu *smmu,
				 struct tegra_smmu_as *as)
{
	u32 value;
	int err;

	if (as->use_count > 0) {
		as->use_count++;
		return 0;
	}

	as->pd_dma = FUNC1(smmu->dev, as->pd, 0, SMMU_SIZE_PD,
				  DMA_TO_DEVICE);
	if (FUNC2(smmu->dev, as->pd_dma))
		return -ENOMEM;

	/* We can't handle 64-bit DMA addresses */
	if (!FUNC4(smmu, as->pd_dma)) {
		err = -ENOMEM;
		goto err_unmap;
	}

	err = FUNC9(smmu, &as->id);
	if (err < 0)
		goto err_unmap;

	FUNC6(smmu, as->pd_dma, 0);
	FUNC7(smmu, as->id);

	FUNC8(smmu, as->id & 0x7f, SMMU_PTB_ASID);
	value = FUNC0(as->pd_dma, as->attr);
	FUNC8(smmu, value, SMMU_PTB_DATA);
	FUNC5(smmu);

	as->smmu = smmu;
	as->use_count++;

	return 0;

err_unmap:
	FUNC3(smmu->dev, as->pd_dma, SMMU_SIZE_PD, DMA_TO_DEVICE);
	return err;
}