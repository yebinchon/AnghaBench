
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_mm; } ;


 TYPE_1__* current ;
 int efi_set_pgd (int ) ;
 int preempt_enable () ;

void efi_virtmap_unload(void)
{
 efi_set_pgd(current->active_mm);
 preempt_enable();
}
