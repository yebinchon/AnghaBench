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
struct rk_iommu {int num_mmu; int /*<<< orphan*/  clocks; int /*<<< orphan*/  num_clocks; int /*<<< orphan*/ * bases; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK_MMU_DTE_ADDR ; 
 int /*<<< orphan*/  RK_MMU_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC5 (struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rk_iommu *iommu)
{
	int i;

	/* Ignore error while disabling, just keep going */
	FUNC0(FUNC2(iommu->num_clocks, iommu->clocks));
	FUNC5(iommu);
	FUNC3(iommu);
	for (i = 0; i < iommu->num_mmu; i++) {
		FUNC6(iommu->bases[i], RK_MMU_INT_MASK, 0);
		FUNC6(iommu->bases[i], RK_MMU_DTE_ADDR, 0);
	}
	FUNC4(iommu);
	FUNC1(iommu->num_clocks, iommu->clocks);
}