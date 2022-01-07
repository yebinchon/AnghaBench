
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct dmi_sysfs_entry {int dummy; } ;
struct dmi_read_state {char* buf; size_t count; int pos; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int dmi_entry_raw_read_helper ;
 int find_dmi_entry (struct dmi_sysfs_entry*,int ,struct dmi_read_state*) ;
 struct dmi_sysfs_entry* to_entry (struct kobject*) ;

__attribute__((used)) static ssize_t dmi_entry_raw_read(struct file *filp,
      struct kobject *kobj,
      struct bin_attribute *bin_attr,
      char *buf, loff_t pos, size_t count)
{
 struct dmi_sysfs_entry *entry = to_entry(kobj);
 struct dmi_read_state state = {
  .buf = buf,
  .pos = pos,
  .count = count,
 };

 return find_dmi_entry(entry, dmi_entry_raw_read_helper, &state);
}
