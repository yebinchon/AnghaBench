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
struct msi_msg {void* address_hi; void* address_lo; void* data; } ;
struct intel_iommu {int reg; int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int FUNC0 (struct intel_iommu*,int) ; 
 struct intel_iommu* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC4 (int) ; 

void FUNC5(int irq, struct msi_msg *msg)
{
	struct intel_iommu *iommu = FUNC1(irq);
	int reg = FUNC0(iommu, irq);
	unsigned long flag;

	FUNC2(&iommu->register_lock, flag);
	msg->data = FUNC4(iommu->reg + reg + 4);
	msg->address_lo = FUNC4(iommu->reg + reg + 8);
	msg->address_hi = FUNC4(iommu->reg + reg + 12);
	FUNC3(&iommu->register_lock, flag);
}