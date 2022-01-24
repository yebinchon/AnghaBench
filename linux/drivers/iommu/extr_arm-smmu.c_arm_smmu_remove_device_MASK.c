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
struct iommu_fwspec {struct arm_smmu_master_cfg* iommu_priv; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
struct arm_smmu_master_cfg {struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int /*<<< orphan*/  iommu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_fwspec*) ; 
 int /*<<< orphan*/  arm_smmu_ops ; 
 int FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_device*) ; 
 struct iommu_fwspec* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct arm_smmu_master_cfg*) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	struct iommu_fwspec *fwspec = FUNC3(dev);
	struct arm_smmu_master_cfg *cfg;
	struct arm_smmu_device *smmu;
	int ret;

	if (!fwspec || fwspec->ops != &arm_smmu_ops)
		return;

	cfg  = fwspec->iommu_priv;
	smmu = cfg->smmu;

	ret = FUNC1(smmu);
	if (ret < 0)
		return;

	FUNC4(&smmu->iommu, dev);
	FUNC0(fwspec);

	FUNC2(smmu);

	FUNC6(dev);
	FUNC7(fwspec->iommu_priv);
	FUNC5(dev);
}