
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct fw_cfg_sysfs_entry {int dummy; } ;
struct fw_cfg_sysfs_attribute {int (* show ) (struct fw_cfg_sysfs_entry*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (struct fw_cfg_sysfs_entry*,char*) ;
 struct fw_cfg_sysfs_attribute* to_attr (struct attribute*) ;
 struct fw_cfg_sysfs_entry* to_entry (struct kobject*) ;

__attribute__((used)) static ssize_t fw_cfg_sysfs_attr_show(struct kobject *kobj, struct attribute *a,
          char *buf)
{
 struct fw_cfg_sysfs_entry *entry = to_entry(kobj);
 struct fw_cfg_sysfs_attribute *attr = to_attr(a);

 return attr->show(entry, buf);
}
