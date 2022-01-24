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
struct arm_smmu_device {int combined_irq; int features; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARM_SMMU_FEAT_PRI ; 
 int /*<<< orphan*/  ARM_SMMU_IRQ_CTRL ; 
 int /*<<< orphan*/  ARM_SMMU_IRQ_CTRLACK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int IRQ_CTRL_EVTQ_IRQEN ; 
 int IRQ_CTRL_GERROR_IRQEN ; 
 int IRQ_CTRL_PRIQ_IRQEN ; 
 int /*<<< orphan*/  arm_smmu_combined_irq_handler ; 
 int /*<<< orphan*/  arm_smmu_combined_irq_thread ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*) ; 
 int FUNC1 (struct arm_smmu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct arm_smmu_device*) ; 

__attribute__((used)) static int FUNC5(struct arm_smmu_device *smmu)
{
	int ret, irq;
	u32 irqen_flags = IRQ_CTRL_EVTQ_IRQEN | IRQ_CTRL_GERROR_IRQEN;

	/* Disable IRQs first */
	ret = FUNC1(smmu, 0, ARM_SMMU_IRQ_CTRL,
				      ARM_SMMU_IRQ_CTRLACK);
	if (ret) {
		FUNC2(smmu->dev, "failed to disable irqs\n");
		return ret;
	}

	irq = smmu->combined_irq;
	if (irq) {
		/*
		 * Cavium ThunderX2 implementation doesn't support unique irq
		 * lines. Use a single irq line for all the SMMUv3 interrupts.
		 */
		ret = FUNC4(smmu->dev, irq,
					arm_smmu_combined_irq_handler,
					arm_smmu_combined_irq_thread,
					IRQF_ONESHOT,
					"arm-smmu-v3-combined-irq", smmu);
		if (ret < 0)
			FUNC3(smmu->dev, "failed to enable combined irq\n");
	} else
		FUNC0(smmu);

	if (smmu->features & ARM_SMMU_FEAT_PRI)
		irqen_flags |= IRQ_CTRL_PRIQ_IRQEN;

	/* Enable interrupt generation on the SMMU */
	ret = FUNC1(smmu, irqen_flags,
				      ARM_SMMU_IRQ_CTRL, ARM_SMMU_IRQ_CTRLACK);
	if (ret)
		FUNC3(smmu->dev, "failed to enable irqs\n");

	return 0;
}