
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efi_mm ;
 int efi_set_pgd (int *) ;
 int preempt_disable () ;

void efi_virtmap_load(void)
{
 preempt_disable();
 efi_set_pgd(&efi_mm);
}
