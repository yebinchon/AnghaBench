
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct omap_iommu* private; } ;
struct omap_iommu {int dummy; } ;


 int EPERM ;
 int iommu_debug_lock ;
 scalar_t__ is_omap_iommu_detached (struct omap_iommu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_dump_tlb_entries (struct omap_iommu*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int tlb_show(struct seq_file *s, void *data)
{
 struct omap_iommu *obj = s->private;

 if (is_omap_iommu_detached(obj))
  return -EPERM;

 mutex_lock(&iommu_debug_lock);

 seq_printf(s, "%8s %8s\n", "cam:", "ram:");
 seq_puts(s, "-----------------------------------------\n");
 omap_dump_tlb_entries(obj, s);

 mutex_unlock(&iommu_debug_lock);

 return 0;
}
