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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct arm_smmu_match_data {int /*<<< orphan*/  model; int /*<<< orphan*/  version; } ;
struct arm_smmu_device {int /*<<< orphan*/  features; int /*<<< orphan*/  model; int /*<<< orphan*/  version; int /*<<< orphan*/  num_global_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_FEAT_COHERENT_WALK ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct arm_smmu_match_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int using_generic_binding ; 
 int using_legacy_binding ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
				    struct arm_smmu_device *smmu)
{
	const struct arm_smmu_match_data *data;
	struct device *dev = &pdev->dev;
	bool legacy_binding;

	if (FUNC4(dev->of_node, "#global-interrupts",
				 &smmu->num_global_irqs)) {
		FUNC0(dev, "missing #global-interrupts property\n");
		return -ENODEV;
	}

	data = FUNC1(dev);
	smmu->version = data->version;
	smmu->model = data->model;

	legacy_binding = FUNC3(dev->of_node, "mmu-masters", NULL);
	if (legacy_binding && !using_generic_binding) {
		if (!using_legacy_binding)
			FUNC5("deprecated \"mmu-masters\" DT property in use; DMA API support unavailable\n");
		using_legacy_binding = true;
	} else if (!legacy_binding && !using_legacy_binding) {
		using_generic_binding = true;
	} else {
		FUNC0(dev, "not probing due to mismatched DT properties\n");
		return -ENODEV;
	}

	if (FUNC2(dev->of_node))
		smmu->features |= ARM_SMMU_FEAT_COHERENT_WALK;

	return 0;
}