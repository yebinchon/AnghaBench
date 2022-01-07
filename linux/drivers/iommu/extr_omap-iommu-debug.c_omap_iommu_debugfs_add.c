
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int nr_tlb_entries; struct dentry* debug_dir; int name; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct omap_iommu*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int iommu_debug_root ;
 int pagetable_fops ;
 int regs_fops ;
 int tlb_fops ;

void omap_iommu_debugfs_add(struct omap_iommu *obj)
{
 struct dentry *d;

 if (!iommu_debug_root)
  return;

 d = debugfs_create_dir(obj->name, iommu_debug_root);
 obj->debug_dir = d;

 debugfs_create_u32("nr_tlb_entries", 0400, d, &obj->nr_tlb_entries);
 debugfs_create_file("regs", 0400, d, obj, &regs_fops);
 debugfs_create_file("tlb", 0400, d, obj, &tlb_fops);
 debugfs_create_file("pagetable", 0400, d, obj, &pagetable_fops);
}
