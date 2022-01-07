
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_map_entry {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static inline void firmware_map_remove_entry(struct firmware_map_entry *entry)
{
 list_del(&entry->list);
}
