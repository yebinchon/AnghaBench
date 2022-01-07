
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int debug_dir; } ;


 int debugfs_remove_recursive (int ) ;

void omap_iommu_debugfs_remove(struct omap_iommu *obj)
{
 if (!obj->debug_dir)
  return;

 debugfs_remove_recursive(obj->debug_dir);
}
