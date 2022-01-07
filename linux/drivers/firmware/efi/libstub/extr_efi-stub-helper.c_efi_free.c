
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;


 int EFI_ALLOC_ALIGN ;
 unsigned long EFI_PAGE_SIZE ;
 int efi_call_early (int ,unsigned long,unsigned long) ;
 int free_pages ;
 unsigned long round_up (unsigned long,int ) ;

void efi_free(efi_system_table_t *sys_table_arg, unsigned long size,
       unsigned long addr)
{
 unsigned long nr_pages;

 if (!size)
  return;

 nr_pages = round_up(size, EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
 efi_call_early(free_pages, addr, nr_pages);
}
