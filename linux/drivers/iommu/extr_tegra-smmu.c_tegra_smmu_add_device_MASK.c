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
struct tegra_smmu {int /*<<< orphan*/  iommu; } ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct iommu_group {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct tegra_smmu* iommu; } ;
struct device {TYPE_1__ archdata; struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,char*,unsigned int,struct of_phandle_args*) ; 
 int FUNC7 (struct tegra_smmu*,struct device*,struct of_phandle_args*) ; 
 struct tegra_smmu* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct tegra_smmu *smmu = NULL;
	struct iommu_group *group;
	struct of_phandle_args args;
	unsigned int index = 0;
	int err;

	while (FUNC6(np, "iommus", "#iommu-cells", index,
					  &args) == 0) {
		smmu = FUNC8(args.np);
		if (smmu) {
			err = FUNC7(smmu, dev, &args);
			FUNC5(args.np);

			if (err < 0)
				return err;

			/*
			 * Only a single IOMMU master interface is currently
			 * supported by the Linux kernel, so abort after the
			 * first match.
			 */
			dev->archdata.iommu = smmu;

			FUNC2(&smmu->iommu, dev);

			break;
		}

		FUNC5(args.np);
		index++;
	}

	if (!smmu)
		return -ENODEV;

	group = FUNC3(dev);
	if (FUNC0(group))
		return FUNC1(group);

	FUNC4(group);

	return 0;
}