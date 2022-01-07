
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_info {int dummy; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;


 int EFI_RUNTIME_SERVICES_DATA ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,struct screen_info*,...) ;
 int free_pool ;
 int install_configuration_table ;
 int screen_info_guid ;

struct screen_info *alloc_screen_info(efi_system_table_t *sys_table_arg)
{
 struct screen_info *si;
 efi_status_t status;







 status = efi_call_early(allocate_pool, EFI_RUNTIME_SERVICES_DATA,
    sizeof(*si), (void **)&si);

 if (status != EFI_SUCCESS)
  return ((void*)0);

 status = efi_call_early(install_configuration_table,
    &screen_info_guid, si);
 if (status == EFI_SUCCESS)
  return si;

 efi_call_early(free_pool, si);
 return ((void*)0);
}
