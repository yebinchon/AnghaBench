
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_iommu {TYPE_1__* ir_table; int * ir_domain; int * ir_msi_domain; } ;
struct TYPE_2__ {int bitmap; scalar_t__ base; } ;


 int INTR_REMAP_PAGE_ORDER ;
 int bitmap_free (int ) ;
 int free_pages (unsigned long,int ) ;
 int irq_domain_remove (int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void intel_teardown_irq_remapping(struct intel_iommu *iommu)
{
 if (iommu && iommu->ir_table) {
  if (iommu->ir_msi_domain) {
   irq_domain_remove(iommu->ir_msi_domain);
   iommu->ir_msi_domain = ((void*)0);
  }
  if (iommu->ir_domain) {
   irq_domain_remove(iommu->ir_domain);
   iommu->ir_domain = ((void*)0);
  }
  free_pages((unsigned long)iommu->ir_table->base,
      INTR_REMAP_PAGE_ORDER);
  bitmap_free(iommu->ir_table->bitmap);
  kfree(iommu->ir_table);
  iommu->ir_table = ((void*)0);
 }
}
