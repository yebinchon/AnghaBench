
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_info {int dummy; } ;
typedef int efi_system_table_t ;


 int efi_call_early (int ,struct screen_info*,...) ;
 int free_pool ;
 int install_configuration_table ;
 int screen_info_guid ;

void free_screen_info(efi_system_table_t *sys_table_arg, struct screen_info *si)
{
 if (!si)
  return;

 efi_call_early(install_configuration_table, &screen_info_guid, ((void*)0));
 efi_call_early(free_pool, si);
}
