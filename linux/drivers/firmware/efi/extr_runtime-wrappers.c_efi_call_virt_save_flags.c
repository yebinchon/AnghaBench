
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_efi_save_flags (unsigned long) ;

unsigned long efi_call_virt_save_flags(void)
{
 unsigned long flags;

 arch_efi_save_flags(flags);
 return flags;
}
