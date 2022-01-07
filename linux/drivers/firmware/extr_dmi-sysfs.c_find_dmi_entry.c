
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_dmi_data {void* private; int ret; int instance_countdown; int callback; struct dmi_sysfs_entry* entry; } ;
struct dmi_sysfs_entry {int instance; } ;
typedef int ssize_t ;
typedef int dmi_callback ;


 int EINVAL ;
 int EIO ;
 int dmi_walk (int ,struct find_dmi_data*) ;
 int find_dmi_entry_helper ;

__attribute__((used)) static ssize_t find_dmi_entry(struct dmi_sysfs_entry *entry,
         dmi_callback callback, void *private)
{
 struct find_dmi_data data = {
  .entry = entry,
  .callback = callback,
  .private = private,
  .instance_countdown = entry->instance,
  .ret = -EIO,
 };
 int ret;

 ret = dmi_walk(find_dmi_entry_helper, &data);

 if (ret)
  return -EINVAL;
 return data.ret;
}
