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
struct intel_iommu {int irq; int /*<<< orphan*/  name; int /*<<< orphan*/  node; int /*<<< orphan*/  seq_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_NO_THREAD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  dmar_fault ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_iommu*) ; 

int FUNC3(struct intel_iommu *iommu)
{
	int irq, ret;

	/*
	 * Check if the fault interrupt is already initialized.
	 */
	if (iommu->irq)
		return 0;

	irq = FUNC0(iommu->seq_id, iommu->node, iommu);
	if (irq > 0) {
		iommu->irq = irq;
	} else {
		FUNC1("No free IRQ vectors\n");
		return -EINVAL;
	}

	ret = FUNC2(irq, dmar_fault, IRQF_NO_THREAD, iommu->name, iommu);
	if (ret)
		FUNC1("Can't request irq\n");
	return ret;
}