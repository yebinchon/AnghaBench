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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct intel_iommu {int gcmd; int /*<<< orphan*/  register_lock; scalar_t__ reg; int /*<<< orphan*/  root_entry; } ;

/* Variables and functions */
 scalar_t__ DMAR_GCMD_REG ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 scalar_t__ DMAR_RTADDR_REG ; 
 int DMA_GCMD_SRTP ; 
 int DMA_GSTS_RTPS ; 
 int /*<<< orphan*/  DMA_RTADDR_SMT ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  readl ; 
 scalar_t__ FUNC4 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct intel_iommu *iommu)
{
	u64 addr;
	u32 sts;
	unsigned long flag;

	addr = FUNC5(iommu->root_entry);
	if (FUNC4(iommu))
		addr |= DMA_RTADDR_SMT;

	FUNC2(&iommu->register_lock, flag);
	FUNC1(iommu->reg + DMAR_RTADDR_REG, addr);

	FUNC6(iommu->gcmd | DMA_GCMD_SRTP, iommu->reg + DMAR_GCMD_REG);

	/* Make sure hardware complete it */
	FUNC0(iommu, DMAR_GSTS_REG,
		      readl, (sts & DMA_GSTS_RTPS), sts);

	FUNC3(&iommu->register_lock, flag);
}