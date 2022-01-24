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
struct rk_iommu {int num_mmu; int /*<<< orphan*/  dev; int /*<<< orphan*/ * bases; scalar_t__ reset_disabled; } ;

/* Variables and functions */
 int DTE_ADDR_DUMMY ; 
 int EFAULT ; 
 int RK_DTE_PT_ADDRESS_MASK ; 
 int /*<<< orphan*/  RK_MMU_CMD_FORCE_RESET ; 
 int /*<<< orphan*/  RK_MMU_DTE_ADDR ; 
 int /*<<< orphan*/  RK_MMU_FORCE_RESET_TIMEOUT_US ; 
 int /*<<< orphan*/  RK_MMU_POLL_TIMEOUT_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rk_iommu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_iommu_is_reset_done ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rk_iommu *iommu)
{
	int ret, i;
	u32 dte_addr;
	bool val;

	if (iommu->reset_disabled)
		return 0;

	/*
	 * Check if register DTE_ADDR is working by writing DTE_ADDR_DUMMY
	 * and verifying that upper 5 nybbles are read back.
	 */
	for (i = 0; i < iommu->num_mmu; i++) {
		FUNC4(iommu->bases[i], RK_MMU_DTE_ADDR, DTE_ADDR_DUMMY);

		dte_addr = FUNC3(iommu->bases[i], RK_MMU_DTE_ADDR);
		if (dte_addr != (DTE_ADDR_DUMMY & RK_DTE_PT_ADDRESS_MASK)) {
			FUNC0(iommu->dev, "Error during raw reset. MMU_DTE_ADDR is not functioning\n");
			return -EFAULT;
		}
	}

	FUNC2(iommu, RK_MMU_CMD_FORCE_RESET);

	ret = FUNC1(rk_iommu_is_reset_done, iommu, val,
				 val, RK_MMU_FORCE_RESET_TIMEOUT_US,
				 RK_MMU_POLL_TIMEOUT_US);
	if (ret) {
		FUNC0(iommu->dev, "FORCE_RESET command timed out\n");
		return ret;
	}

	return 0;
}