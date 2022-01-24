#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct intel_iommu {int gcmd; int /*<<< orphan*/  register_lock; scalar_t__ reg; TYPE_1__* ir_table; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DMAR_GCMD_REG ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 scalar_t__ DMAR_IRTA_REG ; 
 int DMA_GCMD_SIRTP ; 
 int DMA_GSTS_IRTPS ; 
 int INTR_REMAP_TABLE_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  readl ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct intel_iommu *iommu, int mode)
{
	unsigned long flags;
	u64 addr;
	u32 sts;

	addr = FUNC6((void *)iommu->ir_table->base);

	FUNC4(&iommu->register_lock, flags);

	FUNC2(iommu->reg + DMAR_IRTA_REG,
		    (addr) | FUNC1(mode) | INTR_REMAP_TABLE_REG_SIZE);

	/* Set interrupt-remapping table pointer */
	FUNC7(iommu->gcmd | DMA_GCMD_SIRTP, iommu->reg + DMAR_GCMD_REG);

	FUNC0(iommu, DMAR_GSTS_REG,
		      readl, (sts & DMA_GSTS_IRTPS), sts);
	FUNC5(&iommu->register_lock, flags);

	/*
	 * Global invalidation of interrupt entry cache to make sure the
	 * hardware uses the new irq remapping table.
	 */
	FUNC3(iommu);
}