#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iommu_domain {int dummy; } ;
struct arm_smmu_s2_cfg {scalar_t__ vmid; } ;
struct TYPE_2__ {scalar_t__ asid; } ;
struct arm_smmu_s1_cfg {TYPE_1__ cd; int /*<<< orphan*/  cdptr_dma; scalar_t__ cdptr; } ;
struct arm_smmu_domain {scalar_t__ stage; struct arm_smmu_s2_cfg s2_cfg; struct arm_smmu_device* smmu; struct arm_smmu_s1_cfg s1_cfg; int /*<<< orphan*/  pgtbl_ops; } ;
struct arm_smmu_device {int /*<<< orphan*/  vmid_map; int /*<<< orphan*/  asid_map; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ARM_SMMU_DOMAIN_S1 ; 
 int CTXDESC_CD_DWORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct arm_smmu_domain*) ; 
 struct arm_smmu_domain* FUNC5 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC6(struct iommu_domain *domain)
{
	struct arm_smmu_domain *smmu_domain = FUNC5(domain);
	struct arm_smmu_device *smmu = smmu_domain->smmu;

	FUNC3(domain);
	FUNC2(smmu_domain->pgtbl_ops);

	/* Free the CD and ASID, if we allocated them */
	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;

		if (cfg->cdptr) {
			FUNC1(smmu_domain->smmu->dev,
					   CTXDESC_CD_DWORDS << 3,
					   cfg->cdptr,
					   cfg->cdptr_dma);

			FUNC0(smmu->asid_map, cfg->cd.asid);
		}
	} else {
		struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;
		if (cfg->vmid)
			FUNC0(smmu->vmid_map, cfg->vmid);
	}

	FUNC4(smmu_domain);
}