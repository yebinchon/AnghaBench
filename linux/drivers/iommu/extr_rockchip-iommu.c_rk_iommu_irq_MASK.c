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
struct rk_iommu {int num_mmu; int /*<<< orphan*/  dev; int /*<<< orphan*/  clocks; int /*<<< orphan*/  num_clocks; int /*<<< orphan*/ * bases; scalar_t__ domain; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int IOMMU_FAULT_READ ; 
 int IOMMU_FAULT_WRITE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RK_MMU_CMD_PAGE_FAULT_DONE ; 
 int /*<<< orphan*/  RK_MMU_CMD_ZAP_CACHE ; 
 int /*<<< orphan*/  RK_MMU_INT_CLEAR ; 
 int /*<<< orphan*/  RK_MMU_INT_STATUS ; 
 int RK_MMU_IRQ_BUS_ERROR ; 
 int RK_MMU_IRQ_MASK ; 
 int RK_MMU_IRQ_PAGE_FAULT ; 
 int /*<<< orphan*/  RK_MMU_PAGE_FAULT_ADDR ; 
 int /*<<< orphan*/  RK_MMU_STATUS ; 
 int RK_MMU_STATUS_PAGE_FAULT_IS_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct rk_iommu*,int,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct rk_iommu *iommu = dev_id;
	u32 status;
	u32 int_status;
	dma_addr_t iova;
	irqreturn_t ret = IRQ_NONE;
	int i, err;

	err = FUNC6(iommu->dev);
	if (FUNC1(err <= 0))
		return ret;

	if (FUNC0(FUNC3(iommu->num_clocks, iommu->clocks)))
		goto out;

	for (i = 0; i < iommu->num_mmu; i++) {
		int_status = FUNC10(iommu->bases[i], RK_MMU_INT_STATUS);
		if (int_status == 0)
			continue;

		ret = IRQ_HANDLED;
		iova = FUNC10(iommu->bases[i], RK_MMU_PAGE_FAULT_ADDR);

		if (int_status & RK_MMU_IRQ_PAGE_FAULT) {
			int flags;

			status = FUNC10(iommu->bases[i], RK_MMU_STATUS);
			flags = (status & RK_MMU_STATUS_PAGE_FAULT_IS_WRITE) ?
					IOMMU_FAULT_WRITE : IOMMU_FAULT_READ;

			FUNC4(iommu->dev, "Page fault at %pad of type %s\n",
				&iova,
				(flags == IOMMU_FAULT_WRITE) ? "write" : "read");

			FUNC5(iommu, i, iova);

			/*
			 * Report page fault to any installed handlers.
			 * Ignore the return code, though, since we always zap cache
			 * and clear the page fault anyway.
			 */
			if (iommu->domain)
				FUNC8(iommu->domain, iommu->dev, iova,
						   flags);
			else
				FUNC4(iommu->dev, "Page fault while iommu not attached to domain?\n");

			FUNC9(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
			FUNC9(iommu->bases[i], RK_MMU_CMD_PAGE_FAULT_DONE);
		}

		if (int_status & RK_MMU_IRQ_BUS_ERROR)
			FUNC4(iommu->dev, "BUS_ERROR occurred at %pad\n", &iova);

		if (int_status & ~RK_MMU_IRQ_MASK)
			FUNC4(iommu->dev, "unexpected int_status: %#08x\n",
				int_status);

		FUNC11(iommu->bases[i], RK_MMU_INT_CLEAR, int_status);
	}

	FUNC2(iommu->num_clocks, iommu->clocks);

out:
	FUNC7(iommu->dev);
	return ret;
}