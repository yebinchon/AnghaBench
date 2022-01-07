
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_info {int dummy; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 int EFI_LOADER_DATA ;
 int EFI_LOCATE_BY_PROTOCOL ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,void**,...) ;
 scalar_t__ efi_is_64bit () ;
 int free_pool ;
 int locate_handle ;
 scalar_t__ setup_gop32 (int *,struct screen_info*,int *,unsigned long,void**) ;
 scalar_t__ setup_gop64 (int *,struct screen_info*,int *,unsigned long,void**) ;

efi_status_t efi_setup_gop(efi_system_table_t *sys_table_arg,
      struct screen_info *si, efi_guid_t *proto,
      unsigned long size)
{
 efi_status_t status;
 void **gop_handle = ((void*)0);

 status = efi_call_early(allocate_pool, EFI_LOADER_DATA,
    size, (void **)&gop_handle);
 if (status != EFI_SUCCESS)
  return status;

 status = efi_call_early(locate_handle,
    EFI_LOCATE_BY_PROTOCOL,
    proto, ((void*)0), &size, gop_handle);
 if (status != EFI_SUCCESS)
  goto free_handle;

 if (efi_is_64bit()) {
  status = setup_gop64(sys_table_arg, si, proto, size,
         gop_handle);
 } else {
  status = setup_gop32(sys_table_arg, si, proto, size,
         gop_handle);
 }

free_handle:
 efi_call_early(free_pool, gop_handle);
 return status;
}
