
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_iommu {TYPE_1__* ir_table; int cap; int ecap; } ;
struct dmar_drhd_unit {struct intel_iommu* iommu; } ;
struct TYPE_2__ {int bitmap; } ;


 int EBUSY ;
 int EINVAL ;
 int INTR_REMAP_TABLE_ENTRIES ;
 int IRQ_POSTING_CAP ;
 int bitmap_empty (int ,int ) ;
 int cap_pi_support (int ) ;
 int dmar_ir_add (struct dmar_drhd_unit*,struct intel_iommu*) ;
 int ecap_ir_support (int ) ;
 int intel_teardown_irq_remapping (struct intel_iommu*) ;
 int iommu_disable_irq_remapping (struct intel_iommu*) ;
 int ir_remove_ioapic_hpet_scope (struct intel_iommu*) ;
 scalar_t__ irq_remapping_cap (int ) ;
 int irq_remapping_enabled ;

int dmar_ir_hotplug(struct dmar_drhd_unit *dmaru, bool insert)
{
 int ret = 0;
 struct intel_iommu *iommu = dmaru->iommu;

 if (!irq_remapping_enabled)
  return 0;
 if (iommu == ((void*)0))
  return -EINVAL;
 if (!ecap_ir_support(iommu->ecap))
  return 0;
 if (irq_remapping_cap(IRQ_POSTING_CAP) &&
     !cap_pi_support(iommu->cap))
  return -EBUSY;

 if (insert) {
  if (!iommu->ir_table)
   ret = dmar_ir_add(dmaru, iommu);
 } else {
  if (iommu->ir_table) {
   if (!bitmap_empty(iommu->ir_table->bitmap,
       INTR_REMAP_TABLE_ENTRIES)) {
    ret = -EBUSY;
   } else {
    iommu_disable_irq_remapping(iommu);
    intel_teardown_irq_remapping(iommu);
    ir_remove_ioapic_hpet_scope(iommu);
   }
  }
 }

 return ret;
}
