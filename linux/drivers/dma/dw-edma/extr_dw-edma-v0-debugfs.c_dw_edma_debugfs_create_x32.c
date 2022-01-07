
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct debugfs_entries {int reg; int name; } ;


 int debugfs_create_file_unsafe (int ,int,struct dentry*,int ,int *) ;
 int fops_x32 ;

__attribute__((used)) static void dw_edma_debugfs_create_x32(const struct debugfs_entries entries[],
           int nr_entries, struct dentry *dir)
{
 int i;

 for (i = 0; i < nr_entries; i++) {
  if (!debugfs_create_file_unsafe(entries[i].name, 0444, dir,
      entries[i].reg, &fops_x32))
   break;
 }
}
