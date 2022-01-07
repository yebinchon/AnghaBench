
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int dummy; } ;
struct edac_device_block {int nr_attribs; int kobj; struct edac_dev_sysfs_block_attribute* block_attributes; } ;
struct edac_dev_sysfs_block_attribute {int dummy; } ;
struct attribute {int dummy; } ;


 int kobject_put (int *) ;
 int sysfs_remove_file (int *,struct attribute*) ;

__attribute__((used)) static void edac_device_delete_block(struct edac_device_ctl_info *edac_dev,
    struct edac_device_block *block)
{
 struct edac_dev_sysfs_block_attribute *sysfs_attrib;
 int i;




 sysfs_attrib = block->block_attributes;
 if (sysfs_attrib && block->nr_attribs) {
  for (i = 0; i < block->nr_attribs; i++, sysfs_attrib++) {


   sysfs_remove_file(&block->kobj,
    (struct attribute *) sysfs_attrib);
  }
 }




 kobject_put(&block->kobj);
}
