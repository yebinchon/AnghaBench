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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_iommu_domain {int /*<<< orphan*/  domain; } ;
struct mtk_iommu_data {scalar_t__ base; int /*<<< orphan*/  dev; struct mtk_iommu_domain* m4u_dom; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_INT_CLR_BIT ; 
 int /*<<< orphan*/  F_MMU_FAULT_VA_MSK ; 
 int /*<<< orphan*/  IOMMU_FAULT_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_MMU_FAULT_ST ; 
 scalar_t__ REG_MMU_FAULT_VA ; 
 scalar_t__ REG_MMU_INT_CONTROL ; 
 scalar_t__ REG_MMU_INT_ID ; 
 scalar_t__ REG_MMU_INVLD_PA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_iommu_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct mtk_iommu_data *data = dev_id;
	struct mtk_iommu_domain *dom = data->m4u_dom;
	u32 int_state, regval, fault_iova, fault_pa;
	unsigned int fault_larb, fault_port;

	/* Read error information from registers */
	int_state = FUNC4(data->base + REG_MMU_FAULT_ST);
	fault_iova = FUNC4(data->base + REG_MMU_FAULT_VA);

	fault_iova &= F_MMU_FAULT_VA_MSK;
	fault_pa = FUNC4(data->base + REG_MMU_INVLD_PA);
	regval = FUNC4(data->base + REG_MMU_INT_ID);
	fault_larb = FUNC0(regval);
	fault_port = FUNC1(regval);

	/*
	 * MTK v1 iommu HW could not determine whether the fault is read or
	 * write fault, report as read fault.
	 */
	if (FUNC5(&dom->domain, data->dev, fault_iova,
			IOMMU_FAULT_READ))
		FUNC2(data->dev,
			"fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d\n",
			int_state, fault_iova, fault_pa,
			fault_larb, fault_port);

	/* Interrupt clear */
	regval = FUNC4(data->base + REG_MMU_INT_CONTROL);
	regval |= F_INT_CLR_BIT;
	FUNC6(regval, data->base + REG_MMU_INT_CONTROL);

	FUNC3(data);

	return IRQ_HANDLED;
}