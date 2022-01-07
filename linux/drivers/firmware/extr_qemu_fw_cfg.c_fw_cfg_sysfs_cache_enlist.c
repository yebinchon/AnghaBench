
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cfg_sysfs_entry {int list; } ;


 int fw_cfg_cache_lock ;
 int fw_cfg_entry_cache ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void fw_cfg_sysfs_cache_enlist(struct fw_cfg_sysfs_entry *entry)
{
 spin_lock(&fw_cfg_cache_lock);
 list_add_tail(&entry->list, &fw_cfg_entry_cache);
 spin_unlock(&fw_cfg_cache_lock);
}
