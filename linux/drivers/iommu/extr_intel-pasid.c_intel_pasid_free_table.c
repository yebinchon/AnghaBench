
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasid_table {int max_pasid; int order; struct pasid_dir_entry* table; int dev; } ;
struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int dummy; } ;
struct device_domain_info {struct pasid_table* pasid_table; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 int PASID_PDE_SHIFT ;
 int dev_is_pci (struct device*) ;
 int device_detach_pasid_table (struct device_domain_info*,struct pasid_table*) ;
 int free_pages (unsigned long,int ) ;
 int free_pgtable_page (struct pasid_entry*) ;
 struct pasid_entry* get_pasid_table_from_pde (struct pasid_dir_entry*) ;
 int kfree (struct pasid_table*) ;
 int list_empty (int *) ;

void intel_pasid_free_table(struct device *dev)
{
 struct device_domain_info *info;
 struct pasid_table *pasid_table;
 struct pasid_dir_entry *dir;
 struct pasid_entry *table;
 int i, max_pde;

 info = dev->archdata.iommu;
 if (!info || !dev_is_pci(dev) || !info->pasid_table)
  return;

 pasid_table = info->pasid_table;
 device_detach_pasid_table(info, pasid_table);

 if (!list_empty(&pasid_table->dev))
  return;


 dir = pasid_table->table;
 max_pde = pasid_table->max_pasid >> PASID_PDE_SHIFT;
 for (i = 0; i < max_pde; i++) {
  table = get_pasid_table_from_pde(&dir[i]);
  free_pgtable_page(table);
 }

 free_pages((unsigned long)pasid_table->table, pasid_table->order);
 kfree(pasid_table);
}
