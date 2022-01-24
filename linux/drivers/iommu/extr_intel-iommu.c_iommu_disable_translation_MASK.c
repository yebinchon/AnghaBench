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
struct intel_iommu {int /*<<< orphan*/  register_lock; scalar_t__ reg; int /*<<< orphan*/  gcmd; } ;

/* Variables and functions */
 scalar_t__ DMAR_GCMD_REG ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 int /*<<< orphan*/  DMA_GCMD_TE ; 
 int DMA_GSTS_TES ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  readl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct intel_iommu *iommu)
{
	u32 sts;
	unsigned long flag;

	FUNC1(&iommu->register_lock, flag);
	iommu->gcmd &= ~DMA_GCMD_TE;
	FUNC3(iommu->gcmd, iommu->reg + DMAR_GCMD_REG);

	/* Make sure hardware complete it */
	FUNC0(iommu, DMAR_GSTS_REG,
		      readl, (!(sts & DMA_GSTS_TES)), sts);

	FUNC2(&iommu->register_lock, flag);
}