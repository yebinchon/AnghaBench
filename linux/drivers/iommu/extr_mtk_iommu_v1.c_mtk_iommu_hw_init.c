
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_iommu_data {int protect_base; int irq; int dev; int bclk; scalar_t__ base; } ;


 int ENODEV ;
 int F_INT_ENTRY_REPLACEMENT_FAULT ;
 int F_INT_INVALID_PA_FAULT ;
 int F_INT_MAIN_MULTI_HIT_FAULT ;
 int F_INT_MISS_DMA_FIFO_OVERFLOW ;
 int F_INT_PFH_DMA_FIFO_OVERFLOW ;
 int F_INT_TABLE_WALK_FAULT ;
 int F_INT_TLB_MISS_FAULT ;
 int F_INT_TRANSLATION_FAULT ;
 int F_MMU_CTRL_COHERENT_EN ;
 int F_MMU_DCM_ON ;
 int F_MMU_TF_PROTECT_SEL (int) ;
 scalar_t__ REG_MMU_CTRL_REG ;
 scalar_t__ REG_MMU_DCM ;
 scalar_t__ REG_MMU_INT_CONTROL ;
 scalar_t__ REG_MMU_IVRP_PADDR ;
 scalar_t__ REG_MMU_PT_BASE_ADDR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 scalar_t__ devm_request_irq (int ,int,int ,int ,int ,void*) ;
 int mtk_iommu_isr ;
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

 regval = F_MMU_CTRL_COHERENT_EN | F_MMU_TF_PROTECT_SEL(2);
 writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);

 regval = F_INT_TRANSLATION_FAULT |
  F_INT_MAIN_MULTI_HIT_FAULT |
  F_INT_INVALID_PA_FAULT |
  F_INT_ENTRY_REPLACEMENT_FAULT |
  F_INT_TABLE_WALK_FAULT |
  F_INT_TLB_MISS_FAULT |
  F_INT_PFH_DMA_FIFO_OVERFLOW |
  F_INT_MISS_DMA_FIFO_OVERFLOW;
 writel_relaxed(regval, data->base + REG_MMU_INT_CONTROL);


 writel_relaxed(data->protect_base,
   data->base + REG_MMU_IVRP_PADDR);

 writel_relaxed(F_MMU_DCM_ON, data->base + REG_MMU_DCM);

 if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
        dev_name(data->dev), (void *)data)) {
  writel_relaxed(0, data->base + REG_MMU_PT_BASE_ADDR);
  clk_disable_unprepare(data->bclk);
  dev_err(data->dev, "Failed @ IRQ-%d Request\n", data->irq);
  return -ENODEV;
 }

 return 0;
}
