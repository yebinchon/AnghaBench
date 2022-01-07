
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct fw_cfg_sysfs_entry {scalar_t__ size; int select; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int fw_cfg_read_blob (int ,char*,scalar_t__,size_t) ;
 struct fw_cfg_sysfs_entry* to_entry (struct kobject*) ;

__attribute__((used)) static ssize_t fw_cfg_sysfs_read_raw(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buf, loff_t pos, size_t count)
{
 struct fw_cfg_sysfs_entry *entry = to_entry(kobj);

 if (pos > entry->size)
  return -EINVAL;

 if (count > entry->size - pos)
  count = entry->size - pos;

 return fw_cfg_read_blob(entry->select, buf, pos, count);
}
