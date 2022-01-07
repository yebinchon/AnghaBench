
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_iommu {int gcmd; int register_lock; scalar_t__ reg; int root_entry; } ;


 scalar_t__ DMAR_GCMD_REG ;
 int DMAR_GSTS_REG ;
 scalar_t__ DMAR_RTADDR_REG ;
 int DMA_GCMD_SRTP ;
 int DMA_GSTS_RTPS ;
 int DMA_RTADDR_SMT ;
 int IOMMU_WAIT_OP (struct intel_iommu*,int ,int ,int,int) ;
 int dmar_writeq (scalar_t__,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl ;
 scalar_t__ sm_supported (struct intel_iommu*) ;
 int virt_to_phys (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iommu_set_root_entry(struct intel_iommu *iommu)
{
 u64 addr;
 u32 sts;
 unsigned long flag;

 addr = virt_to_phys(iommu->root_entry);
 if (sm_supported(iommu))
  addr |= DMA_RTADDR_SMT;

 raw_spin_lock_irqsave(&iommu->register_lock, flag);
 dmar_writeq(iommu->reg + DMAR_RTADDR_REG, addr);

 writel(iommu->gcmd | DMA_GCMD_SRTP, iommu->reg + DMAR_GCMD_REG);


 IOMMU_WAIT_OP(iommu, DMAR_GSTS_REG,
        readl, (sts & DMA_GSTS_RTPS), sts);

 raw_spin_unlock_irqrestore(&iommu->register_lock, flag);
}
