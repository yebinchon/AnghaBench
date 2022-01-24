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
typedef  int u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct arm_smmu_device {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_FEAT_COHERENCY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_smmu_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				    struct arm_smmu_device *smmu)
{
	struct device *dev = &pdev->dev;
	u32 cells;
	int ret = -EINVAL;

	if (FUNC2(dev->of_node, "#iommu-cells", &cells))
		FUNC0(dev, "missing #iommu-cells property\n");
	else if (cells != 1)
		FUNC0(dev, "invalid #iommu-cells value (%d)\n", cells);
	else
		ret = 0;

	FUNC3(smmu);

	if (FUNC1(dev->of_node))
		smmu->features |= ARM_SMMU_FEAT_COHERENCY;

	return ret;
}