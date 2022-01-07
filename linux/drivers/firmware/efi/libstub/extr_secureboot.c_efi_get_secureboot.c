
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int setupmode ;
typedef int secboot ;
typedef int moksbstate ;
typedef enum efi_secureboot_mode { ____Placeholder_efi_secureboot_mode } efi_secureboot_mode ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int efi_SecureBoot_name ;
 int efi_SetupMode_name ;
 int efi_secureboot_mode_disabled ;
 int efi_secureboot_mode_enabled ;
 int efi_secureboot_mode_unknown ;
 int efi_variable_guid ;
 scalar_t__ get_efi_var (int ,int *,int*,unsigned long*,scalar_t__*) ;
 int pr_efi (int *,char*) ;
 int pr_efi_err (int *,char*) ;
 int shim_MokSBState_name ;
 int shim_guid ;

enum efi_secureboot_mode efi_get_secureboot(efi_system_table_t *sys_table_arg)
{
 u32 attr;
 u8 secboot, setupmode, moksbstate;
 unsigned long size;
 efi_status_t status;

 size = sizeof(secboot);
 status = get_efi_var(efi_SecureBoot_name, &efi_variable_guid,
        ((void*)0), &size, &secboot);
 if (status == EFI_NOT_FOUND)
  return efi_secureboot_mode_disabled;
 if (status != EFI_SUCCESS)
  goto out_efi_err;

 size = sizeof(setupmode);
 status = get_efi_var(efi_SetupMode_name, &efi_variable_guid,
        ((void*)0), &size, &setupmode);
 if (status != EFI_SUCCESS)
  goto out_efi_err;

 if (secboot == 0 || setupmode == 1)
  return efi_secureboot_mode_disabled;






 size = sizeof(moksbstate);
 status = get_efi_var(shim_MokSBState_name, &shim_guid,
        &attr, &size, &moksbstate);


 if (status != EFI_SUCCESS)
  goto secure_boot_enabled;
 if (!(attr & EFI_VARIABLE_RUNTIME_ACCESS) && moksbstate == 1)
  return efi_secureboot_mode_disabled;

secure_boot_enabled:
 pr_efi(sys_table_arg, "UEFI Secure Boot is enabled.\n");
 return efi_secureboot_mode_enabled;

out_efi_err:
 pr_efi_err(sys_table_arg, "Could not determine UEFI Secure Boot status.\n");
 return efi_secureboot_mode_unknown;
}
