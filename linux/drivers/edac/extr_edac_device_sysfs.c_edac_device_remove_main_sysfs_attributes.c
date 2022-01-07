
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edac_device_ctl_info {int kobj; struct edac_dev_sysfs_attribute* sysfs_attributes; } ;
struct TYPE_2__ {int * name; } ;
struct edac_dev_sysfs_attribute {TYPE_1__ attr; } ;
struct attribute {int dummy; } ;


 int sysfs_remove_file (int *,struct attribute*) ;

__attribute__((used)) static void edac_device_remove_main_sysfs_attributes(
   struct edac_device_ctl_info *edac_dev)
{
 struct edac_dev_sysfs_attribute *sysfs_attrib;





 sysfs_attrib = edac_dev->sysfs_attributes;
 if (sysfs_attrib) {
  while (sysfs_attrib->attr.name != ((void*)0)) {
   sysfs_remove_file(&edac_dev->kobj,
     (struct attribute *) sysfs_attrib);
   sysfs_attrib++;
  }
 }
}
