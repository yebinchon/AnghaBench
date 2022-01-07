
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {int gcmd; int register_lock; scalar_t__ reg; int cap; } ;


 scalar_t__ DMAR_GCMD_REG ;
 int DMAR_GSTS_REG ;
 int DMA_GCMD_WBF ;
 int DMA_GSTS_WBFS ;
 int IOMMU_WAIT_OP (struct intel_iommu*,int ,int ,int,int) ;
 int cap_rwbf (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl ;
 int rwbf_quirk ;
 int writel (int,scalar_t__) ;

void iommu_flush_write_buffer(struct intel_iommu *iommu)
{
 u32 val;
 unsigned long flag;

 if (!rwbf_quirk && !cap_rwbf(iommu->cap))
  return;

 raw_spin_lock_irqsave(&iommu->register_lock, flag);
 writel(iommu->gcmd | DMA_GCMD_WBF, iommu->reg + DMAR_GCMD_REG);


 IOMMU_WAIT_OP(iommu, DMAR_GSTS_REG,
        readl, (!(val & DMA_GSTS_WBFS)), val);

 raw_spin_unlock_irqrestore(&iommu->register_lock, flag);
}
