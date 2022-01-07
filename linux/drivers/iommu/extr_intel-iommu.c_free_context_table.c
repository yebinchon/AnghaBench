
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int lock; struct context_entry* root_entry; } ;
struct context_entry {int dummy; } ;


 int ROOT_ENTRY_NR ;
 int free_pgtable_page (struct context_entry*) ;
 struct context_entry* iommu_context_addr (struct intel_iommu*,int,int,int ) ;
 int sm_supported (struct intel_iommu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_context_table(struct intel_iommu *iommu)
{
 int i;
 unsigned long flags;
 struct context_entry *context;

 spin_lock_irqsave(&iommu->lock, flags);
 if (!iommu->root_entry) {
  goto out;
 }
 for (i = 0; i < ROOT_ENTRY_NR; i++) {
  context = iommu_context_addr(iommu, i, 0, 0);
  if (context)
   free_pgtable_page(context);

  if (!sm_supported(iommu))
   continue;

  context = iommu_context_addr(iommu, i, 0x80, 0);
  if (context)
   free_pgtable_page(context);

 }
 free_pgtable_page(iommu->root_entry);
 iommu->root_entry = ((void*)0);
out:
 spin_unlock_irqrestore(&iommu->lock, flags);
}
