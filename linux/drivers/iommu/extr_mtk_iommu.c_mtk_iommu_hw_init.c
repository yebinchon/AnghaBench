
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_iommu_data {int protect_base; int enable_4GB; int irq; int dev; int bclk; scalar_t__ base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {scalar_t__ m4u_plat; scalar_t__ reset_axi; scalar_t__ has_vld_pa_rng; } ;


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
 int F_MMU_VLD_PA_RNG (int,int) ;
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
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 scalar_t__ devm_request_irq (int ,int,int ,int ,int ,void*) ;
 int lower_32_bits (int) ;
 int mtk_iommu_isr ;
 int upper_32_bits (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
{
 u32 regval;
 int ret;

 ret = clk_prepare_enable(data->bclk);
 if (ret) {
  dev_err(data->dev, "Failed to enable iommu bclk(%d)\n", ret);
  return ret;
 }

 if (data->plat_data->m4u_plat == M4U_MT8173)
  regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
    F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
 else
  regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
 writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);

 regval = F_L2_MULIT_HIT_EN |
  F_TABLE_WALK_FAULT_INT_EN |
  F_PREETCH_FIFO_OVERFLOW_INT_EN |
  F_MISS_FIFO_OVERFLOW_INT_EN |
  F_PREFETCH_FIFO_ERR_INT_EN |
  F_MISS_FIFO_ERR_INT_EN;
 writel_relaxed(regval, data->base + REG_MMU_INT_CONTROL0);

 regval = F_INT_TRANSLATION_FAULT |
  F_INT_MAIN_MULTI_HIT_FAULT |
  F_INT_INVALID_PA_FAULT |
  F_INT_ENTRY_REPLACEMENT_FAULT |
  F_INT_TLB_MISS_FAULT |
  F_INT_MISS_TRANSACTION_FIFO_FAULT |
  F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);

 if (data->plat_data->m4u_plat == M4U_MT8173)
  regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 else
  regval = lower_32_bits(data->protect_base) |
    upper_32_bits(data->protect_base);
 writel_relaxed(regval, data->base + REG_MMU_IVRP_PADDR);

 if (data->enable_4GB && data->plat_data->has_vld_pa_rng) {




  regval = F_MMU_VLD_PA_RNG(7, 4);
  writel_relaxed(regval, data->base + REG_MMU_VLD_PA_RNG);
 }
 writel_relaxed(0, data->base + REG_MMU_DCM_DIS);

 if (data->plat_data->reset_axi)
  writel_relaxed(0, data->base + REG_MMU_STANDARD_AXI_MODE);

 if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
        dev_name(data->dev), (void *)data)) {
  writel_relaxed(0, data->base + REG_MMU_PT_BASE_ADDR);
  clk_disable_unprepare(data->bclk);
  dev_err(data->dev, "Failed @ IRQ-%d Request\n", data->irq);
  return -ENODEV;
 }

 return 0;
}
