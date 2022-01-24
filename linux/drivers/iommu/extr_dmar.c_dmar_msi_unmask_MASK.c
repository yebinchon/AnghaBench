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
struct irq_data {int /*<<< orphan*/  irq; } ;
struct intel_iommu {int reg; int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int FUNC0 (struct intel_iommu*,int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct irq_data *data)
{
	struct intel_iommu *iommu = FUNC1(data);
	int reg = FUNC0(iommu, data->irq);
	unsigned long flag;

	/* unmask it */
	FUNC2(&iommu->register_lock, flag);
	FUNC5(0, iommu->reg + reg);
	/* Read a reg to force flush the post write */
	FUNC4(iommu->reg + reg);
	FUNC3(&iommu->register_lock, flag);
}