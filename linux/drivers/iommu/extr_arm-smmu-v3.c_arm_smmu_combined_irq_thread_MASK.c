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
struct arm_smmu_device {int features; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ARM_SMMU_FEAT_PRI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev)
{
	struct arm_smmu_device *smmu = dev;

	FUNC0(irq, dev);
	if (smmu->features & ARM_SMMU_FEAT_PRI)
		FUNC1(irq, dev);

	return IRQ_HANDLED;
}