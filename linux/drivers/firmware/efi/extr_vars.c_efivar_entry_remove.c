
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int list; } ;


 int EINTR ;
 scalar_t__ down_interruptible (int *) ;
 int efivars_lock ;
 int list_del (int *) ;
 int up (int *) ;

int efivar_entry_remove(struct efivar_entry *entry)
{
 if (down_interruptible(&efivars_lock))
  return -EINTR;
 list_del(&entry->list);
 up(&efivars_lock);

 return 0;
}
