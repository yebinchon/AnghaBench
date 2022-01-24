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
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 scalar_t__ DMAR_PMEN_REG ; 
 int DMA_PMEN_EPM ; 
 int DMA_PMEN_PRS ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,scalar_t__,int (*) (scalar_t__),int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct intel_iommu *iommu)
{
	u32 pmen;
	unsigned long flags;

	if (!FUNC2(iommu->cap) && !FUNC1(iommu->cap))
		return;

	FUNC3(&iommu->register_lock, flags);
	pmen = FUNC5(iommu->reg + DMAR_PMEN_REG);
	pmen &= ~DMA_PMEN_EPM;
	FUNC6(pmen, iommu->reg + DMAR_PMEN_REG);

	/* wait for the protected region status bit to clear */
	FUNC0(iommu, DMAR_PMEN_REG,
		readl, !(pmen & DMA_PMEN_PRS), pmen);

	FUNC4(&iommu->register_lock, flags);
}