
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct firmware_map_entry {char const* type; int list; int kobj; scalar_t__ end; scalar_t__ start; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int kobject_init (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int map_entries ;
 int map_entries_lock ;
 int memmap_ktype ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int firmware_map_add_entry(u64 start, u64 end,
      const char *type,
      struct firmware_map_entry *entry)
{
 BUG_ON(start > end);

 entry->start = start;
 entry->end = end - 1;
 entry->type = type;
 INIT_LIST_HEAD(&entry->list);
 kobject_init(&entry->kobj, &memmap_ktype);

 spin_lock(&map_entries_lock);
 list_add_tail(&entry->list, &map_entries);
 spin_unlock(&map_entries_lock);

 return 0;
}
