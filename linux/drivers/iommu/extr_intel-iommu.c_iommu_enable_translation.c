
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {int register_lock; scalar_t__ reg; int gcmd; } ;


 scalar_t__ DMAR_GCMD_REG ;
 int DMAR_GSTS_REG ;
 int DMA_GCMD_TE ;
 int DMA_GSTS_TES ;
 int IOMMU_WAIT_OP (struct intel_iommu*,int ,int ,int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void iommu_enable_translation(struct intel_iommu *iommu)
{
 u32 sts;
 unsigned long flags;

 raw_spin_lock_irqsave(&iommu->register_lock, flags);
 iommu->gcmd |= DMA_GCMD_TE;
 writel(iommu->gcmd, iommu->reg + DMAR_GCMD_REG);


 IOMMU_WAIT_OP(iommu, DMAR_GSTS_REG,
        readl, (sts & DMA_GSTS_TES), sts);

 raw_spin_unlock_irqrestore(&iommu->register_lock, flags);
}
