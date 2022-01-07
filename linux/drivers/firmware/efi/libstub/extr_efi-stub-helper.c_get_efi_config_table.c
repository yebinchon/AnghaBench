
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;
typedef int efi_guid_t ;


 scalar_t__ efi_is_64bit () ;
 void* get_efi_config_table32 (int *,int ) ;
 void* get_efi_config_table64 (int *,int ) ;

void *get_efi_config_table(efi_system_table_t *sys_table, efi_guid_t guid)
{
 if (efi_is_64bit())
  return get_efi_config_table64(sys_table, guid);
 else
  return get_efi_config_table32(sys_table, guid);
}
