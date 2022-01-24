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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct arm_smmu_strtab_cfg {int num_l1_ents; int /*<<< orphan*/  strtab_base_cfg; void* strtab; int /*<<< orphan*/  strtab_dma; } ;
struct arm_smmu_device {int sid_bits; int /*<<< orphan*/  dev; struct arm_smmu_strtab_cfg strtab_cfg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  STRTAB_BASE_CFG_FMT ; 
 int STRTAB_BASE_CFG_FMT_LINEAR ; 
 int /*<<< orphan*/  STRTAB_BASE_CFG_LOG2SIZE ; 
 int STRTAB_STE_DWORDS ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct arm_smmu_device *smmu)
{
	void *strtab;
	u64 reg;
	u32 size;
	struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;

	size = (1 << smmu->sid_bits) * (STRTAB_STE_DWORDS << 3);
	strtab = FUNC3(smmu->dev, size, &cfg->strtab_dma,
				     GFP_KERNEL | __GFP_ZERO);
	if (!strtab) {
		FUNC2(smmu->dev,
			"failed to allocate linear stream table (%u bytes)\n",
			size);
		return -ENOMEM;
	}
	cfg->strtab = strtab;
	cfg->num_l1_ents = 1 << smmu->sid_bits;

	/* Configure strtab_base_cfg for a linear table covering all SIDs */
	reg  = FUNC0(STRTAB_BASE_CFG_FMT, STRTAB_BASE_CFG_FMT_LINEAR);
	reg |= FUNC0(STRTAB_BASE_CFG_LOG2SIZE, smmu->sid_bits);
	cfg->strtab_base_cfg = reg;

	FUNC1(strtab, cfg->num_l1_ents);
	return 0;
}