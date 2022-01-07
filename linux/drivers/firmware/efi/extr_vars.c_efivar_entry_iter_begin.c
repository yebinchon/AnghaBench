
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int down_interruptible (int *) ;
 int efivars_lock ;

int efivar_entry_iter_begin(void)
{
 return down_interruptible(&efivars_lock);
}
