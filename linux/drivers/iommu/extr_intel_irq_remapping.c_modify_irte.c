
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int pst; int high; int low; } ;
struct irq_2_iommu {int irte_index; int sub_handle; int mode; struct intel_iommu* iommu; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {struct irte* base; } ;


 int IRQ_POSTING ;
 int IRQ_REMAPPING ;
 int WARN_ON (int) ;
 int __iommu_flush_cache (struct intel_iommu*,struct irte*,int) ;
 int cmpxchg_double (int *,int *,int ,int ,int ,int ) ;
 int irq_2_ir_lock ;
 int qi_flush_iec (struct intel_iommu*,int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int set_64bit (int *,int ) ;

__attribute__((used)) static int modify_irte(struct irq_2_iommu *irq_iommu,
         struct irte *irte_modified)
{
 struct intel_iommu *iommu;
 unsigned long flags;
 struct irte *irte;
 int rc, index;

 if (!irq_iommu)
  return -1;

 raw_spin_lock_irqsave(&irq_2_ir_lock, flags);

 iommu = irq_iommu->iommu;

 index = irq_iommu->irte_index + irq_iommu->sub_handle;
 irte = &iommu->ir_table->base[index];
 {
  set_64bit(&irte->low, irte_modified->low);
  set_64bit(&irte->high, irte_modified->high);
 }
 __iommu_flush_cache(iommu, irte, sizeof(*irte));

 rc = qi_flush_iec(iommu, index, 0);


 irq_iommu->mode = irte->pst ? IRQ_POSTING : IRQ_REMAPPING;
 raw_spin_unlock_irqrestore(&irq_2_ir_lock, flags);

 return rc;
}
