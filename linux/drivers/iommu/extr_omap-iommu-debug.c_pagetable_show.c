
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct omap_iommu* private; } ;
struct omap_iommu {int dummy; } ;


 int EPERM ;
 int dump_ioptable (struct seq_file*) ;
 int iommu_debug_lock ;
 scalar_t__ is_omap_iommu_detached (struct omap_iommu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int pagetable_show(struct seq_file *s, void *data)
{
 struct omap_iommu *obj = s->private;

 if (is_omap_iommu_detached(obj))
  return -EPERM;

 mutex_lock(&iommu_debug_lock);

 seq_printf(s, "L: %8s %8s\n", "da:", "pte:");
 seq_puts(s, "--------------------------\n");
 dump_ioptable(s);

 mutex_unlock(&iommu_debug_lock);

 return 0;
}
