
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kset; } ;
struct TYPE_4__ {void* esre1; } ;
struct esre_entry {int list; TYPE_2__ kobj; TYPE_1__ esre; } ;
struct TYPE_6__ {int fw_resource_version; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int entry_list ;
 int esre1_ktype ;
 TYPE_3__* esrt ;
 int esrt_kset ;
 int kfree (struct esre_entry*) ;
 int kobject_init_and_add (TYPE_2__*,int *,int *,char*,int) ;
 struct esre_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int esre_create_sysfs_entry(void *esre, int entry_num)
{
 struct esre_entry *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->kobj.kset = esrt_kset;

 if (esrt->fw_resource_version == 1) {
  int rc = 0;

  entry->esre.esre1 = esre;
  rc = kobject_init_and_add(&entry->kobj, &esre1_ktype, ((void*)0),
       "entry%d", entry_num);
  if (rc) {
   kfree(entry);
   return rc;
  }
 }

 list_add_tail(&entry->list, &entry_list);
 return 0;
}
