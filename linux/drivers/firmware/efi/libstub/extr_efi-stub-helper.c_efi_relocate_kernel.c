
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef unsigned long efi_physical_addr_t ;


 int EFI_ALLOCATE_ADDRESS ;
 int EFI_ALLOC_ALIGN ;
 scalar_t__ EFI_INVALID_PARAMETER ;
 int EFI_LOADER_DATA ;
 unsigned long EFI_PAGE_SIZE ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pages ;
 scalar_t__ efi_call_early (int ,int ,int ,unsigned long,unsigned long*) ;
 scalar_t__ efi_low_alloc_above (int *,unsigned long,unsigned long,unsigned long*,unsigned long) ;
 int memcpy (void*,void*,unsigned long) ;
 int pr_efi_err (int *,char*) ;
 unsigned long round_up (unsigned long,int ) ;

efi_status_t efi_relocate_kernel(efi_system_table_t *sys_table_arg,
     unsigned long *image_addr,
     unsigned long image_size,
     unsigned long alloc_size,
     unsigned long preferred_addr,
     unsigned long alignment,
     unsigned long min_addr)
{
 unsigned long cur_image_addr;
 unsigned long new_addr = 0;
 efi_status_t status;
 unsigned long nr_pages;
 efi_physical_addr_t efi_addr = preferred_addr;

 if (!image_addr || !image_size || !alloc_size)
  return EFI_INVALID_PARAMETER;
 if (alloc_size < image_size)
  return EFI_INVALID_PARAMETER;

 cur_image_addr = *image_addr;
 nr_pages = round_up(alloc_size, EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
 status = efi_call_early(allocate_pages,
    EFI_ALLOCATE_ADDRESS, EFI_LOADER_DATA,
    nr_pages, &efi_addr);
 new_addr = efi_addr;




 if (status != EFI_SUCCESS) {
  status = efi_low_alloc_above(sys_table_arg, alloc_size,
          alignment, &new_addr, min_addr);
 }
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table_arg, "Failed to allocate usable memory for kernel.\n");
  return status;
 }





 memcpy((void *)new_addr, (void *)cur_image_addr, image_size);


 *image_addr = new_addr;

 return status;
}
