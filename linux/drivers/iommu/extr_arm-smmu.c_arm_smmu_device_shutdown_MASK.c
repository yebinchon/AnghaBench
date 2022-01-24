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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct arm_smmu_device {int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; int /*<<< orphan*/  dev; int /*<<< orphan*/  context_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_GR0_sCR0 ; 
 int /*<<< orphan*/  ARM_SMMU_MAX_CBS ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct arm_smmu_device* FUNC7 (struct platform_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sCR0_CLIENTPD ; 

__attribute__((used)) static void FUNC10(struct platform_device *pdev)
{
	struct arm_smmu_device *smmu = FUNC7(pdev);

	if (!smmu)
		return;

	if (!FUNC3(smmu->context_map, ARM_SMMU_MAX_CBS))
		FUNC6(&pdev->dev, "removing device with active domains!\n");

	FUNC1(smmu);
	/* Turn the thing off */
	FUNC0(smmu, ARM_SMMU_GR0_sCR0, sCR0_CLIENTPD);
	FUNC2(smmu);

	if (FUNC8(smmu->dev))
		FUNC9(smmu->dev);
	else
		FUNC4(smmu->num_clks, smmu->clks);

	FUNC5(smmu->num_clks, smmu->clks);
}