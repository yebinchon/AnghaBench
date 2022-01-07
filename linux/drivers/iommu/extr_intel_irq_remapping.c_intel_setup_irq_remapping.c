
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ir_table {unsigned long* bitmap; int base; } ;
struct intel_iommu {struct ir_table* ir_table; int name; int qi; int seq_id; int ir_domain; int ir_msi_domain; int node; } ;
struct fwnode_handle {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INTR_REMAP_PAGE_ORDER ;
 int INTR_REMAP_TABLE_ENTRIES ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages_node (int ,int,int ) ;
 int arch_create_remap_msi_irq_domain (int ,char*,int ) ;
 int arch_get_ir_parent_domain () ;
 int bitmap_free (unsigned long*) ;
 unsigned long* bitmap_zalloc (int ,int ) ;
 int clear_ir_pre_enabled (struct intel_iommu*) ;
 int dmar_disable_qi (struct intel_iommu*) ;
 scalar_t__ dmar_enable_qi (struct intel_iommu*) ;
 int dmar_fault (int,struct intel_iommu*) ;
 int eim_mode ;
 int init_ir_status (struct intel_iommu*) ;
 int intel_ir_domain_ops ;
 int iommu_disable_irq_remapping (struct intel_iommu*) ;
 scalar_t__ iommu_load_old_irte (struct intel_iommu*) ;
 int iommu_set_irq_remapping (struct intel_iommu*,int ) ;
 scalar_t__ ir_pre_enabled (struct intel_iommu*) ;
 struct fwnode_handle* irq_domain_alloc_named_id_fwnode (char*,int ) ;
 int irq_domain_create_hierarchy (int ,int ,int ,struct fwnode_handle*,int *,struct intel_iommu*) ;
 int irq_domain_free_fwnode (struct fwnode_handle*) ;
 int is_kdump_kernel () ;
 int kfree (struct ir_table*) ;
 struct ir_table* kzalloc (int,int) ;
 int page_address (struct page*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int intel_setup_irq_remapping(struct intel_iommu *iommu)
{
 struct ir_table *ir_table;
 struct fwnode_handle *fn;
 unsigned long *bitmap;
 struct page *pages;

 if (iommu->ir_table)
  return 0;

 ir_table = kzalloc(sizeof(struct ir_table), GFP_KERNEL);
 if (!ir_table)
  return -ENOMEM;

 pages = alloc_pages_node(iommu->node, GFP_KERNEL | __GFP_ZERO,
     INTR_REMAP_PAGE_ORDER);
 if (!pages) {
  pr_err("IR%d: failed to allocate pages of order %d\n",
         iommu->seq_id, INTR_REMAP_PAGE_ORDER);
  goto out_free_table;
 }

 bitmap = bitmap_zalloc(INTR_REMAP_TABLE_ENTRIES, GFP_ATOMIC);
 if (bitmap == ((void*)0)) {
  pr_err("IR%d: failed to allocate bitmap\n", iommu->seq_id);
  goto out_free_pages;
 }

 fn = irq_domain_alloc_named_id_fwnode("INTEL-IR", iommu->seq_id);
 if (!fn)
  goto out_free_bitmap;

 iommu->ir_domain =
  irq_domain_create_hierarchy(arch_get_ir_parent_domain(),
         0, INTR_REMAP_TABLE_ENTRIES,
         fn, &intel_ir_domain_ops,
         iommu);
 irq_domain_free_fwnode(fn);
 if (!iommu->ir_domain) {
  pr_err("IR%d: failed to allocate irqdomain\n", iommu->seq_id);
  goto out_free_bitmap;
 }
 iommu->ir_msi_domain =
  arch_create_remap_msi_irq_domain(iommu->ir_domain,
       "INTEL-IR-MSI",
       iommu->seq_id);

 ir_table->base = page_address(pages);
 ir_table->bitmap = bitmap;
 iommu->ir_table = ir_table;





 if (!iommu->qi) {



  dmar_fault(-1, iommu);
  dmar_disable_qi(iommu);

  if (dmar_enable_qi(iommu)) {
   pr_err("Failed to enable queued invalidation\n");
   goto out_free_bitmap;
  }
 }

 init_ir_status(iommu);

 if (ir_pre_enabled(iommu)) {
  if (!is_kdump_kernel()) {
   pr_warn("IRQ remapping was enabled on %s but we are not in kdump mode\n",
    iommu->name);
   clear_ir_pre_enabled(iommu);
   iommu_disable_irq_remapping(iommu);
  } else if (iommu_load_old_irte(iommu))
   pr_err("Failed to copy IR table for %s from previous kernel\n",
          iommu->name);
  else
   pr_info("Copied IR table for %s from previous kernel\n",
    iommu->name);
 }

 iommu_set_irq_remapping(iommu, eim_mode);

 return 0;

out_free_bitmap:
 bitmap_free(bitmap);
out_free_pages:
 __free_pages(pages, INTR_REMAP_PAGE_ORDER);
out_free_table:
 kfree(ir_table);

 iommu->ir_table = ((void*)0);

 return -ENOMEM;
}
