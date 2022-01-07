
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct irq_2_iommu {int irte_index; unsigned int irte_mask; int mode; scalar_t__ sub_handle; struct intel_iommu* iommu; } ;
struct ir_table {int bitmap; } ;
struct intel_iommu {int seq_id; int ecap; struct ir_table* ir_table; } ;


 int INTR_REMAP_TABLE_ENTRIES ;
 int IRQ_REMAPPING ;
 int __roundup_pow_of_two (int) ;
 int bitmap_find_free_region (int ,int ,unsigned int) ;
 unsigned int ecap_max_handle_mask (int ) ;
 unsigned int ilog2 (int) ;
 int irq_2_ir_lock ;
 int pr_err (char*,unsigned int,unsigned int) ;
 int pr_warn (char*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int alloc_irte(struct intel_iommu *iommu,
        struct irq_2_iommu *irq_iommu, u16 count)
{
 struct ir_table *table = iommu->ir_table;
 unsigned int mask = 0;
 unsigned long flags;
 int index;

 if (!count || !irq_iommu)
  return -1;

 if (count > 1) {
  count = __roundup_pow_of_two(count);
  mask = ilog2(count);
 }

 if (mask > ecap_max_handle_mask(iommu->ecap)) {
  pr_err("Requested mask %x exceeds the max invalidation handle"
         " mask value %Lx\n", mask,
         ecap_max_handle_mask(iommu->ecap));
  return -1;
 }

 raw_spin_lock_irqsave(&irq_2_ir_lock, flags);
 index = bitmap_find_free_region(table->bitmap,
     INTR_REMAP_TABLE_ENTRIES, mask);
 if (index < 0) {
  pr_warn("IR%d: can't allocate an IRTE\n", iommu->seq_id);
 } else {
  irq_iommu->iommu = iommu;
  irq_iommu->irte_index = index;
  irq_iommu->sub_handle = 0;
  irq_iommu->irte_mask = mask;
  irq_iommu->mode = IRQ_REMAPPING;
 }
 raw_spin_unlock_irqrestore(&irq_2_ir_lock, flags);

 return index;
}
