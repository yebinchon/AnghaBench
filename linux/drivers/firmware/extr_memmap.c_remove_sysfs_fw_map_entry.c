
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_map_entry {int kobj; } ;


 int kobject_put (int *) ;

__attribute__((used)) static inline void remove_sysfs_fw_map_entry(struct firmware_map_entry *entry)
{
 kobject_put(&entry->kobj);
}
