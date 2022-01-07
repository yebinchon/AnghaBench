
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efivars_lock ;
 int up (int *) ;

void efivar_entry_iter_end(void)
{
 up(&efivars_lock);
}
