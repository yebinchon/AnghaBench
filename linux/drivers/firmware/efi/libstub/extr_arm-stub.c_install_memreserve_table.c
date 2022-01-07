
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_efi_memreserve {int count; scalar_t__ size; scalar_t__ next; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 int EFI_LOADER_DATA ;
 scalar_t__ EFI_SUCCESS ;
 int LINUX_EFI_MEMRESERVE_TABLE_GUID ;
 int allocate_pool ;
 int atomic_set (int *,int ) ;
 scalar_t__ efi_call_early (int ,int *,...) ;
 int install_configuration_table ;
 int pr_efi_err (int *,char*) ;

void install_memreserve_table(efi_system_table_t *sys_table_arg)
{
 struct linux_efi_memreserve *rsv;
 efi_guid_t memreserve_table_guid = LINUX_EFI_MEMRESERVE_TABLE_GUID;
 efi_status_t status;

 status = efi_call_early(allocate_pool, EFI_LOADER_DATA, sizeof(*rsv),
    (void **)&rsv);
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table_arg, "Failed to allocate memreserve entry!\n");
  return;
 }

 rsv->next = 0;
 rsv->size = 0;
 atomic_set(&rsv->count, 0);

 status = efi_call_early(install_configuration_table,
    &memreserve_table_guid,
    rsv);
 if (status != EFI_SUCCESS)
  pr_efi_err(sys_table_arg, "Failed to install memreserve config table!\n");
}
