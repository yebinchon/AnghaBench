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
struct arm_smmu_strtab_cfg {int num_l1_ents; int /*<<< orphan*/ * l1_desc; void* strtab; } ;
struct arm_smmu_device {int /*<<< orphan*/  dev; struct arm_smmu_strtab_cfg strtab_cfg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int STRTAB_L1_DESC_DWORDS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct arm_smmu_device *smmu)
{
	unsigned int i;
	struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;
	size_t size = sizeof(*cfg->l1_desc) * cfg->num_l1_ents;
	void *strtab = smmu->strtab_cfg.strtab;

	cfg->l1_desc = FUNC2(smmu->dev, size, GFP_KERNEL);
	if (!cfg->l1_desc) {
		FUNC1(smmu->dev, "failed to allocate l1 stream table desc\n");
		return -ENOMEM;
	}

	for (i = 0; i < cfg->num_l1_ents; ++i) {
		FUNC0(strtab, &cfg->l1_desc[i]);
		strtab += STRTAB_L1_DESC_DWORDS << 3;
	}

	return 0;
}