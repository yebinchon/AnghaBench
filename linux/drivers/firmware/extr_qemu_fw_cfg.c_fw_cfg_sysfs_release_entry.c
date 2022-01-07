
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct fw_cfg_sysfs_entry {int dummy; } ;


 int fw_cfg_sysfs_cache_delist (struct fw_cfg_sysfs_entry*) ;
 int kfree (struct fw_cfg_sysfs_entry*) ;
 struct fw_cfg_sysfs_entry* to_entry (struct kobject*) ;

__attribute__((used)) static void fw_cfg_sysfs_release_entry(struct kobject *kobj)
{
 struct fw_cfg_sysfs_entry *entry = to_entry(kobj);

 fw_cfg_sysfs_cache_delist(entry);
 kfree(entry);
}
