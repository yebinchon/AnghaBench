#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/ * mair; int /*<<< orphan*/  tcr; int /*<<< orphan*/ * ttbr; } ;
struct io_pgtable_cfg {TYPE_2__ arm_lpae_s1_cfg; } ;
struct TYPE_3__ {int /*<<< orphan*/  mair; int /*<<< orphan*/  tcr; int /*<<< orphan*/  ttbr; int /*<<< orphan*/  asid; } ;
struct arm_smmu_s1_cfg {TYPE_1__ cd; int /*<<< orphan*/  cdptr; int /*<<< orphan*/  cdptr_dma; } ;
struct arm_smmu_domain {struct arm_smmu_s1_cfg s1_cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int /*<<< orphan*/  asid_map; int /*<<< orphan*/  dev; int /*<<< orphan*/  asid_bits; } ;

/* Variables and functions */
 int CTXDESC_CD_DWORDS ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct arm_smmu_domain *smmu_domain,
				       struct io_pgtable_cfg *pgtbl_cfg)
{
	int ret;
	int asid;
	struct arm_smmu_device *smmu = smmu_domain->smmu;
	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;

	asid = FUNC0(smmu->asid_map, smmu->asid_bits);
	if (asid < 0)
		return asid;

	cfg->cdptr = FUNC3(smmu->dev, CTXDESC_CD_DWORDS << 3,
					 &cfg->cdptr_dma,
					 GFP_KERNEL | __GFP_ZERO);
	if (!cfg->cdptr) {
		FUNC2(smmu->dev, "failed to allocate context descriptor\n");
		ret = -ENOMEM;
		goto out_free_asid;
	}

	cfg->cd.asid	= (u16)asid;
	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
	return 0;

out_free_asid:
	FUNC1(smmu->asid_map, asid);
	return ret;
}