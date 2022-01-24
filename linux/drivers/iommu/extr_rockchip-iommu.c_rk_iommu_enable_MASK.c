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
struct rk_iommu_domain {int /*<<< orphan*/  dt_dma; } ;
struct rk_iommu {int num_mmu; int /*<<< orphan*/  clocks; int /*<<< orphan*/  num_clocks; int /*<<< orphan*/ * bases; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK_MMU_CMD_ZAP_CACHE ; 
 int /*<<< orphan*/  RK_MMU_DTE_ADDR ; 
 int /*<<< orphan*/  RK_MMU_INT_MASK ; 
 int /*<<< orphan*/  RK_MMU_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_iommu*) ; 
 int FUNC4 (struct rk_iommu*) ; 
 int FUNC5 (struct rk_iommu*) ; 
 int FUNC6 (struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rk_iommu_domain* FUNC8 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC9(struct rk_iommu *iommu)
{
	struct iommu_domain *domain = iommu->domain;
	struct rk_iommu_domain *rk_domain = FUNC8(domain);
	int ret, i;

	ret = FUNC1(iommu->num_clocks, iommu->clocks);
	if (ret)
		return ret;

	ret = FUNC5(iommu);
	if (ret)
		goto out_disable_clocks;

	ret = FUNC6(iommu);
	if (ret)
		goto out_disable_stall;

	for (i = 0; i < iommu->num_mmu; i++) {
		FUNC7(iommu->bases[i], RK_MMU_DTE_ADDR,
			       rk_domain->dt_dma);
		FUNC2(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
		FUNC7(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
	}

	ret = FUNC4(iommu);

out_disable_stall:
	FUNC3(iommu);
out_disable_clocks:
	FUNC0(iommu->num_clocks, iommu->clocks);
	return ret;
}