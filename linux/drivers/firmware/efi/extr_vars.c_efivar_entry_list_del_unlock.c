
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int list; } ;


 int efivars_lock ;
 int list_del (int *) ;
 int up (int *) ;

__attribute__((used)) static void efivar_entry_list_del_unlock(struct efivar_entry *entry)
{
 list_del(&entry->list);
 up(&efivars_lock);
}
