
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int __efivar_entry_iter (int (*) (struct efivar_entry*,void*),struct list_head*,void*,int *) ;
 int efivar_entry_iter_begin () ;
 int efivar_entry_iter_end () ;

int efivar_entry_iter(int (*func)(struct efivar_entry *, void *),
        struct list_head *head, void *data)
{
 int err = 0;

 err = efivar_entry_iter_begin();
 if (err)
  return err;
 err = __efivar_entry_iter(func, head, data, ((void*)0));
 efivar_entry_iter_end();

 return err;
}
