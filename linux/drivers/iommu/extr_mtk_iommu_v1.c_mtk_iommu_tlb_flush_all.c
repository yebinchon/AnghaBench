
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_data {scalar_t__ base; } ;


 int F_ALL_INVLD ;
 int F_INVLD_EN0 ;
 int F_INVLD_EN1 ;
 scalar_t__ REG_MMU_INVALIDATE ;
 scalar_t__ REG_MMU_INV_SEL ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void mtk_iommu_tlb_flush_all(struct mtk_iommu_data *data)
{
 writel_relaxed(F_INVLD_EN1 | F_INVLD_EN0,
   data->base + REG_MMU_INV_SEL);
 writel_relaxed(F_ALL_INVLD, data->base + REG_MMU_INVALIDATE);
 wmb();
}
