
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_4__ {int * kset; } ;
struct efi_runtime_map_entry {TYPE_1__ kobj; int md; } ;
typedef int efi_memory_desc_t ;


 int ENOMEM ;
 struct efi_runtime_map_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kobject_add (TYPE_1__*,int *,char*,int) ;
 int kobject_init (TYPE_1__*,int *) ;
 int kobject_put (TYPE_1__*) ;
 int * kset_create_and_add (char*,int *,struct kobject*) ;
 int kset_unregister (int *) ;
 struct efi_runtime_map_entry* kzalloc (int,int ) ;
 int * map_kset ;
 int map_ktype ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static struct efi_runtime_map_entry *
add_sysfs_runtime_map_entry(struct kobject *kobj, int nr,
       efi_memory_desc_t *md)
{
 int ret;
 struct efi_runtime_map_entry *entry;

 if (!map_kset) {
  map_kset = kset_create_and_add("runtime-map", ((void*)0), kobj);
  if (!map_kset)
   return ERR_PTR(-ENOMEM);
 }

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  kset_unregister(map_kset);
  map_kset = ((void*)0);
  return ERR_PTR(-ENOMEM);
 }

 memcpy(&entry->md, md, sizeof(efi_memory_desc_t));

 kobject_init(&entry->kobj, &map_ktype);
 entry->kobj.kset = map_kset;
 ret = kobject_add(&entry->kobj, ((void*)0), "%d", nr);
 if (ret) {
  kobject_put(&entry->kobj);
  kset_unregister(map_kset);
  map_kset = ((void*)0);
  return ERR_PTR(ret);
 }

 return entry;
}
