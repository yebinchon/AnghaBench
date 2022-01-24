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
struct iommu_group {int dummy; } ;
struct iommu_fwspec {int num_ids; struct arm_smmu_master* iommu_priv; int /*<<< orphan*/ * ids; int /*<<< orphan*/  iommu_fwnode; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
struct arm_smmu_master {int num_sids; int /*<<< orphan*/ * sids; struct arm_smmu_device* smmu; struct device* dev; } ;
struct arm_smmu_device {int features; int /*<<< orphan*/  iommu; } ;

/* Variables and functions */
 int ARM_SMMU_FEAT_2_LVL_STRTAB ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 scalar_t__ FUNC2 (struct arm_smmu_master*) ; 
 struct arm_smmu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_smmu_ops ; 
 int /*<<< orphan*/  FUNC5 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 struct iommu_fwspec* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct iommu_group*) ; 
 struct arm_smmu_master* FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	int i, ret;
	struct arm_smmu_device *smmu;
	struct arm_smmu_master *master;
	struct iommu_fwspec *fwspec = FUNC6(dev);
	struct iommu_group *group;

	if (!fwspec || fwspec->ops != &arm_smmu_ops)
		return -ENODEV;
	/*
	 * We _can_ actually withstand dodgy bus code re-calling add_device()
	 * without an intervening remove_device()/of_xlate() sequence, but
	 * we're not going to do so quietly...
	 */
	if (FUNC2(fwspec->iommu_priv)) {
		master = fwspec->iommu_priv;
		smmu = master->smmu;
	} else {
		smmu = FUNC3(fwspec->iommu_fwnode);
		if (!smmu)
			return -ENODEV;
		master = FUNC10(sizeof(*master), GFP_KERNEL);
		if (!master)
			return -ENOMEM;

		master->dev = dev;
		master->smmu = smmu;
		master->sids = fwspec->ids;
		master->num_sids = fwspec->num_ids;
		fwspec->iommu_priv = master;
	}

	/* Check the SIDs are in range of the SMMU and our stream table */
	for (i = 0; i < master->num_sids; i++) {
		u32 sid = master->sids[i];

		if (!FUNC5(smmu, sid))
			return -ERANGE;

		/* Ensure l2 strtab is initialised */
		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
			ret = FUNC4(smmu, sid);
			if (ret)
				return ret;
		}
	}

	group = FUNC8(dev);
	if (!FUNC0(group)) {
		FUNC9(group);
		FUNC7(&smmu->iommu, dev);
	}

	return FUNC1(group);
}