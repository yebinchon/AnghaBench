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
typedef  int u64 ;
struct arm_smmu_cfg {int cbndx; scalar_t__ fmt; unsigned long asid; } ;
struct arm_smmu_domain {struct arm_smmu_cfg cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int features; } ;

/* Variables and functions */
 int ARM_SMMU_CB_S1_TLBIVA ; 
 int ARM_SMMU_CB_S1_TLBIVAL ; 
 scalar_t__ ARM_SMMU_CTX_FMT_AARCH64 ; 
 int ARM_SMMU_FEAT_COHERENT_WALK ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(unsigned long iova, size_t size,
				      size_t granule, bool leaf, void *cookie)
{
	struct arm_smmu_domain *smmu_domain = cookie;
	struct arm_smmu_device *smmu = smmu_domain->smmu;
	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
	int reg, idx = cfg->cbndx;

	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
		FUNC2();

	reg = leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;

	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
		iova = (iova >> 12) << 12;
		iova |= cfg->asid;
		do {
			FUNC0(smmu, idx, reg, iova);
			iova += granule;
		} while (size -= granule);
	} else {
		iova >>= 12;
		iova |= (u64)cfg->asid << 48;
		do {
			FUNC1(smmu, idx, reg, iova);
			iova += granule >> 12;
		} while (size -= granule);
	}
}