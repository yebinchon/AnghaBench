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
struct arm_smmu_device {scalar_t__ base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ARM_SMMU_GERROR ; 
 scalar_t__ ARM_SMMU_GERRORN ; 
 int GERROR_CMDQ_ERR ; 
 int GERROR_ERR_MASK ; 
 int GERROR_EVTQ_ABT_ERR ; 
 int GERROR_MSI_CMDQ_ABT_ERR ; 
 int GERROR_MSI_EVTQ_ABT_ERR ; 
 int GERROR_MSI_GERROR_ABT_ERR ; 
 int GERROR_MSI_PRIQ_ABT_ERR ; 
 int GERROR_PRIQ_ABT_ERR ; 
 int GERROR_SFM_ERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	u32 gerror, gerrorn, active;
	struct arm_smmu_device *smmu = dev;

	gerror = FUNC4(smmu->base + ARM_SMMU_GERROR);
	gerrorn = FUNC4(smmu->base + ARM_SMMU_GERRORN);

	active = gerror ^ gerrorn;
	if (!(active & GERROR_ERR_MASK))
		return IRQ_NONE; /* No errors pending */

	FUNC3(smmu->dev,
		 "unexpected global error reported (0x%08x), this could be serious\n",
		 active);

	if (active & GERROR_SFM_ERR) {
		FUNC2(smmu->dev, "device has entered Service Failure Mode!\n");
		FUNC1(smmu);
	}

	if (active & GERROR_MSI_GERROR_ABT_ERR)
		FUNC3(smmu->dev, "GERROR MSI write aborted\n");

	if (active & GERROR_MSI_PRIQ_ABT_ERR)
		FUNC3(smmu->dev, "PRIQ MSI write aborted\n");

	if (active & GERROR_MSI_EVTQ_ABT_ERR)
		FUNC3(smmu->dev, "EVTQ MSI write aborted\n");

	if (active & GERROR_MSI_CMDQ_ABT_ERR)
		FUNC3(smmu->dev, "CMDQ MSI write aborted\n");

	if (active & GERROR_PRIQ_ABT_ERR)
		FUNC2(smmu->dev, "PRIQ write aborted -- events may have been lost\n");

	if (active & GERROR_EVTQ_ABT_ERR)
		FUNC2(smmu->dev, "EVTQ write aborted -- events may have been lost\n");

	if (active & GERROR_CMDQ_ERR)
		FUNC0(smmu);

	FUNC5(gerror, smmu->base + ARM_SMMU_GERRORN);
	return IRQ_HANDLED;
}