
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int high; int low; } ;
struct irq_2_iommu {int irte_index; int irte_mask; struct intel_iommu* iommu; scalar_t__ sub_handle; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {int bitmap; struct irte* base; } ;


 int bitmap_release_region (int ,int,int) ;
 int qi_flush_iec (struct intel_iommu*,int,int) ;
 int set_64bit (int *,int ) ;

__attribute__((used)) static int clear_entries(struct irq_2_iommu *irq_iommu)
{
 struct irte *start, *entry, *end;
 struct intel_iommu *iommu;
 int index;

 if (irq_iommu->sub_handle)
  return 0;

 iommu = irq_iommu->iommu;
 index = irq_iommu->irte_index;

 start = iommu->ir_table->base + index;
 end = start + (1 << irq_iommu->irte_mask);

 for (entry = start; entry < end; entry++) {
  set_64bit(&entry->low, 0);
  set_64bit(&entry->high, 0);
 }
 bitmap_release_region(iommu->ir_table->bitmap, index,
         irq_iommu->irte_mask);

 return qi_flush_iec(iommu, index, irq_iommu->irte_mask);
}
