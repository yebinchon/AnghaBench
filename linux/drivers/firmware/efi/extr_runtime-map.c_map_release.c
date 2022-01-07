
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct efi_runtime_map_entry {int dummy; } ;


 int kfree (struct efi_runtime_map_entry*) ;
 struct efi_runtime_map_entry* to_map_entry (struct kobject*) ;

__attribute__((used)) static void map_release(struct kobject *kobj)
{
 struct efi_runtime_map_entry *entry;

 entry = to_map_entry(kobj);
 kfree(entry);
}
