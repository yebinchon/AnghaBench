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
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; int /*<<< orphan*/  gcmd; int /*<<< orphan*/  ecap; } ;

/* Variables and functions */
 scalar_t__ DMAR_GCMD_REG ; 
 scalar_t__ DMAR_GSTS_REG ; 
 int /*<<< orphan*/  DMA_GCMD_IRE ; 
 int DMA_GSTS_IRES ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,scalar_t__,int (*) (scalar_t__),int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct intel_iommu *iommu)
{
	unsigned long flags;
	u32 sts;

	if (!FUNC1(iommu->ecap))
		return;

	/*
	 * global invalidation of interrupt entry cache before disabling
	 * interrupt-remapping.
	 */
	FUNC2(iommu);

	FUNC3(&iommu->register_lock, flags);

	sts = FUNC5(iommu->reg + DMAR_GSTS_REG);
	if (!(sts & DMA_GSTS_IRES))
		goto end;

	iommu->gcmd &= ~DMA_GCMD_IRE;
	FUNC6(iommu->gcmd, iommu->reg + DMAR_GCMD_REG);

	FUNC0(iommu, DMAR_GSTS_REG,
		      readl, !(sts & DMA_GSTS_IRES), sts);

end:
	FUNC4(&iommu->register_lock, flags);
}