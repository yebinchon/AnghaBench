
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct dmi_sysfs_entry {int list; } ;


 int entry_list_lock ;
 int kfree (struct dmi_sysfs_entry*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct dmi_sysfs_entry* to_entry (struct kobject*) ;

__attribute__((used)) static void dmi_sysfs_entry_release(struct kobject *kobj)
{
 struct dmi_sysfs_entry *entry = to_entry(kobj);

 spin_lock(&entry_list_lock);
 list_del(&entry->list);
 spin_unlock(&entry_list_lock);
 kfree(entry);
}
