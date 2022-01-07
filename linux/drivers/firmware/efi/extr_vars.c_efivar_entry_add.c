
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct efivar_entry {int list; } ;


 int EINTR ;
 scalar_t__ down_interruptible (int *) ;
 int efivars_lock ;
 int list_add (int *,struct list_head*) ;
 int up (int *) ;

int efivar_entry_add(struct efivar_entry *entry, struct list_head *head)
{
 if (down_interruptible(&efivars_lock))
  return -EINTR;
 list_add(&entry->list, head);
 up(&efivars_lock);

 return 0;
}
