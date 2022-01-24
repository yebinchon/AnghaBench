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
struct rk_iommu {int num_mmu; int /*<<< orphan*/ * bases; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK_MMU_CMD_DISABLE_STALL ; 
 int /*<<< orphan*/  RK_MMU_POLL_PERIOD_US ; 
 int /*<<< orphan*/  RK_MMU_POLL_TIMEOUT_US ; 
 int /*<<< orphan*/  RK_MMU_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  (*) (struct rk_iommu*),struct rk_iommu*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rk_iommu *iommu)
{
	int ret, i;
	bool val;

	if (!FUNC3(iommu))
		return 0;

	FUNC2(iommu, RK_MMU_CMD_DISABLE_STALL);

	ret = FUNC1(rk_iommu_is_stall_active, iommu, val,
				 !val, RK_MMU_POLL_PERIOD_US,
				 RK_MMU_POLL_TIMEOUT_US);
	if (ret)
		for (i = 0; i < iommu->num_mmu; i++)
			FUNC0(iommu->dev, "Disable stall request timed out, status: %#08x\n",
				FUNC4(iommu->bases[i], RK_MMU_STATUS));

	return ret;
}