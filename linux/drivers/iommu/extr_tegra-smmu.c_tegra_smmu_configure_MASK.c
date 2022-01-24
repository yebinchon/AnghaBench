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
struct TYPE_3__ {struct iommu_ops* ops; } ;
struct tegra_smmu {TYPE_1__ iommu; } ;
struct of_phandle_args {int dummy; } ;
struct iommu_ops {int (* of_xlate ) (struct device*,struct of_phandle_args*) ;} ;
struct device {TYPE_2__* of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,struct iommu_ops const*) ; 
 int FUNC3 (struct device*,struct of_phandle_args*) ; 

__attribute__((used)) static int FUNC4(struct tegra_smmu *smmu, struct device *dev,
				struct of_phandle_args *args)
{
	const struct iommu_ops *ops = smmu->iommu.ops;
	int err;

	err = FUNC2(dev, &dev->of_node->fwnode, ops);
	if (err < 0) {
		FUNC0(dev, "failed to initialize fwspec: %d\n", err);
		return err;
	}

	err = ops->of_xlate(dev, args);
	if (err < 0) {
		FUNC0(dev, "failed to parse SW group ID: %d\n", err);
		FUNC1(dev);
		return err;
	}

	return 0;
}