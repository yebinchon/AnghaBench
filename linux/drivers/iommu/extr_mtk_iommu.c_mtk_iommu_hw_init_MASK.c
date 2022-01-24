#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mtk_iommu_data {int protect_base; int enable_4GB; int irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  bclk; scalar_t__ base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {scalar_t__ m4u_plat; scalar_t__ reset_axi; scalar_t__ has_vld_pa_rng; } ;

/* Variables and functions */
 int ENODEV ; 
 int F_INT_ENTRY_REPLACEMENT_FAULT ; 
 int F_INT_INVALID_PA_FAULT ; 
 int F_INT_MAIN_MULTI_HIT_FAULT ; 
 int F_INT_MISS_TRANSACTION_FIFO_FAULT ; 
 int F_INT_PRETETCH_TRANSATION_FIFO_FAULT ; 
 int F_INT_TLB_MISS_FAULT ; 
 int F_INT_TRANSLATION_FAULT ; 
 int F_L2_MULIT_HIT_EN ; 
 int F_MISS_FIFO_ERR_INT_EN ; 
 int F_MISS_FIFO_OVERFLOW_INT_EN ; 
 int F_MMU_PREFETCH_RT_REPLACE_MOD ; 
 int F_MMU_TF_PROT_TO_PROGRAM_ADDR ; 
 int F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173 ; 
 int FUNC0 (int,int) ; 
 int F_PREETCH_FIFO_OVERFLOW_INT_EN ; 
 int F_PREFETCH_FIFO_ERR_INT_EN ; 
 int F_TABLE_WALK_FAULT_INT_EN ; 
 scalar_t__ M4U_MT8173 ; 
 scalar_t__ REG_MMU_CTRL_REG ; 
 scalar_t__ REG_MMU_DCM_DIS ; 
 scalar_t__ REG_MMU_INT_CONTROL0 ; 
 scalar_t__ REG_MMU_INT_MAIN_CONTROL ; 
 scalar_t__ REG_MMU_IVRP_PADDR ; 
 scalar_t__ REG_MMU_PT_BASE_ADDR ; 
 scalar_t__ REG_MMU_STANDARD_AXI_MODE ; 
 scalar_t__ REG_MMU_VLD_PA_RNG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  mtk_iommu_isr ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(const struct mtk_iommu_data *data)
{
	u32 regval;
	int ret;

	ret = FUNC2(data->bclk);
	if (ret) {
		FUNC3(data->dev, "Failed to enable iommu bclk(%d)\n", ret);
		return ret;
	}

	if (data->plat_data->m4u_plat == M4U_MT8173)
		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
	else
		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
	FUNC8(regval, data->base + REG_MMU_CTRL_REG);

	regval = F_L2_MULIT_HIT_EN |
		F_TABLE_WALK_FAULT_INT_EN |
		F_PREETCH_FIFO_OVERFLOW_INT_EN |
		F_MISS_FIFO_OVERFLOW_INT_EN |
		F_PREFETCH_FIFO_ERR_INT_EN |
		F_MISS_FIFO_ERR_INT_EN;
	FUNC8(regval, data->base + REG_MMU_INT_CONTROL0);

	regval = F_INT_TRANSLATION_FAULT |
		F_INT_MAIN_MULTI_HIT_FAULT |
		F_INT_INVALID_PA_FAULT |
		F_INT_ENTRY_REPLACEMENT_FAULT |
		F_INT_TLB_MISS_FAULT |
		F_INT_MISS_TRANSACTION_FIFO_FAULT |
		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
	FUNC8(regval, data->base + REG_MMU_INT_MAIN_CONTROL);

	if (data->plat_data->m4u_plat == M4U_MT8173)
		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
	else
		regval = FUNC6(data->protect_base) |
			 FUNC7(data->protect_base);
	FUNC8(regval, data->base + REG_MMU_IVRP_PADDR);

	if (data->enable_4GB && data->plat_data->has_vld_pa_rng) {
		/*
		 * If 4GB mode is enabled, the validate PA range is from
		 * 0x1_0000_0000 to 0x1_ffff_ffff. here record bit[32:30].
		 */
		regval = FUNC0(7, 4);
		FUNC8(regval, data->base + REG_MMU_VLD_PA_RNG);
	}
	FUNC8(0, data->base + REG_MMU_DCM_DIS);

	if (data->plat_data->reset_axi)
		FUNC8(0, data->base + REG_MMU_STANDARD_AXI_MODE);

	if (FUNC5(data->dev, data->irq, mtk_iommu_isr, 0,
			     FUNC4(data->dev), (void *)data)) {
		FUNC8(0, data->base + REG_MMU_PT_BASE_ADDR);
		FUNC1(data->bclk);
		FUNC3(data->dev, "Failed @ IRQ-%d Request\n", data->irq);
		return -ENODEV;
	}

	return 0;
}