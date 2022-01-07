
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_iommu {int gcmd; int register_lock; scalar_t__ reg; TYPE_1__* ir_table; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ DMAR_GCMD_REG ;
 int DMAR_GSTS_REG ;
 scalar_t__ DMAR_IRTA_REG ;
 int DMA_GCMD_SIRTP ;
 int DMA_GSTS_IRTPS ;
 int INTR_REMAP_TABLE_REG_SIZE ;
 int IOMMU_WAIT_OP (struct intel_iommu*,int ,int ,int,int) ;
 int IR_X2APIC_MODE (int) ;
 int dmar_writeq (scalar_t__,int) ;
 int qi_global_iec (struct intel_iommu*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl ;
 int virt_to_phys (void*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iommu_set_irq_remapping(struct intel_iommu *iommu, int mode)
{
 unsigned long flags;
 u64 addr;
 u32 sts;

 addr = virt_to_phys((void *)iommu->ir_table->base);

 raw_spin_lock_irqsave(&iommu->register_lock, flags);

 dmar_writeq(iommu->reg + DMAR_IRTA_REG,
      (addr) | IR_X2APIC_MODE(mode) | INTR_REMAP_TABLE_REG_SIZE);


 writel(iommu->gcmd | DMA_GCMD_SIRTP, iommu->reg + DMAR_GCMD_REG);

 IOMMU_WAIT_OP(iommu, DMAR_GSTS_REG,
        readl, (sts & DMA_GSTS_IRTPS), sts);
 raw_spin_unlock_irqrestore(&iommu->register_lock, flags);





 qi_global_iec(iommu);
}
