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
struct iommu_fwspec {struct arm_smmu_master* iommu_priv; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct arm_smmu_master {int /*<<< orphan*/  domain_head; int /*<<< orphan*/  ats_enabled; struct arm_smmu_domain* domain; struct arm_smmu_device* smmu; } ;
struct arm_smmu_domain {scalar_t__ stage; int /*<<< orphan*/  init_mutex; int /*<<< orphan*/  devices_lock; int /*<<< orphan*/  devices; int /*<<< orphan*/  s1_cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ARM_SMMU_DOMAIN_BYPASS ; 
 scalar_t__ ARM_SMMU_DOMAIN_S1 ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_master*) ; 
 int FUNC2 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_smmu_master*) ; 
 int /*<<< orphan*/  FUNC4 (struct arm_smmu_master*) ; 
 int /*<<< orphan*/  FUNC5 (struct arm_smmu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iommu_fwspec* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct arm_smmu_domain* FUNC14 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC15(struct iommu_domain *domain, struct device *dev)
{
	int ret = 0;
	unsigned long flags;
	struct iommu_fwspec *fwspec = FUNC7(dev);
	struct arm_smmu_device *smmu;
	struct arm_smmu_domain *smmu_domain = FUNC14(domain);
	struct arm_smmu_master *master;

	if (!fwspec)
		return -ENOENT;

	master = fwspec->iommu_priv;
	smmu = master->smmu;

	FUNC1(master);

	FUNC10(&smmu_domain->init_mutex);

	if (!smmu_domain->smmu) {
		smmu_domain->smmu = smmu;
		ret = FUNC2(domain);
		if (ret) {
			smmu_domain->smmu = NULL;
			goto out_unlock;
		}
	} else if (smmu_domain->smmu != smmu) {
		FUNC6(dev,
			"cannot attach to SMMU %s (upstream of %s)\n",
			FUNC8(smmu_domain->smmu->dev),
			FUNC8(smmu->dev));
		ret = -ENXIO;
		goto out_unlock;
	}

	master->domain = smmu_domain;

	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
		master->ats_enabled = FUNC0(master);

	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
		FUNC5(smmu, &smmu_domain->s1_cfg);

	FUNC4(master);

	FUNC12(&smmu_domain->devices_lock, flags);
	FUNC9(&master->domain_head, &smmu_domain->devices);
	FUNC13(&smmu_domain->devices_lock, flags);

	FUNC3(master);

out_unlock:
	FUNC11(&smmu_domain->init_mutex);
	return ret;
}