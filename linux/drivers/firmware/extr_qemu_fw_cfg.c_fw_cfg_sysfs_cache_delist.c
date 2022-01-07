
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cfg_sysfs_entry {int list; } ;


 int fw_cfg_cache_lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void fw_cfg_sysfs_cache_delist(struct fw_cfg_sysfs_entry *entry)
{
 spin_lock(&fw_cfg_cache_lock);
 list_del(&entry->list);
 spin_unlock(&fw_cfg_cache_lock);
}
