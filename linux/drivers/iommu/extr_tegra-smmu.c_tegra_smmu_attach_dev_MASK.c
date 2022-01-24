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
struct tegra_smmu_as {int /*<<< orphan*/  id; } ;
struct tegra_smmu {TYPE_1__* dev; } ;
struct of_phandle_args {unsigned int* args; scalar_t__ np; } ;
struct iommu_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct tegra_smmu* iommu; } ;
struct device {struct device_node* of_node; TYPE_2__ archdata; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,char*,unsigned int,struct of_phandle_args*) ; 
 int FUNC2 (struct tegra_smmu*,struct tegra_smmu_as*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu*,unsigned int,int /*<<< orphan*/ ) ; 
 struct tegra_smmu_as* FUNC4 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC5(struct iommu_domain *domain,
				 struct device *dev)
{
	struct tegra_smmu *smmu = dev->archdata.iommu;
	struct tegra_smmu_as *as = FUNC4(domain);
	struct device_node *np = dev->of_node;
	struct of_phandle_args args;
	unsigned int index = 0;
	int err = 0;

	while (!FUNC1(np, "iommus", "#iommu-cells", index,
					   &args)) {
		unsigned int swgroup = args.args[0];

		if (args.np != smmu->dev->of_node) {
			FUNC0(args.np);
			continue;
		}

		FUNC0(args.np);

		err = FUNC2(smmu, as);
		if (err < 0)
			return err;

		FUNC3(smmu, swgroup, as->id);
		index++;
	}

	if (index == 0)
		return -ENODEV;

	return 0;
}