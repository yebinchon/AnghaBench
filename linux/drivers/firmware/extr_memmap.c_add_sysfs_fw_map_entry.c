
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kset {int dummy; } ;
struct TYPE_3__ {struct kset* kset; scalar_t__ state_in_sysfs; } ;
struct firmware_map_entry {TYPE_1__ kobj; } ;


 int EEXIST ;
 int ENOMEM ;
 int firmware_kobj ;
 scalar_t__ kobject_add (TYPE_1__*,int *,char*,int ) ;
 int kobject_put (TYPE_1__*) ;
 struct kset* kset_create_and_add (char*,int *,int ) ;

__attribute__((used)) static int add_sysfs_fw_map_entry(struct firmware_map_entry *entry)
{
 static int map_entries_nr;
 static struct kset *mmap_kset;

 if (entry->kobj.state_in_sysfs)
  return -EEXIST;

 if (!mmap_kset) {
  mmap_kset = kset_create_and_add("memmap", ((void*)0), firmware_kobj);
  if (!mmap_kset)
   return -ENOMEM;
 }

 entry->kobj.kset = mmap_kset;
 if (kobject_add(&entry->kobj, ((void*)0), "%d", map_entries_nr++))
  kobject_put(&entry->kobj);

 return 0;
}
