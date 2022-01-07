
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;
typedef int efi_status_t ;


 int CONFIG_ARM_LPAE ;
 int CPUID_EXT_MMFR0 ;
 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int IS_ENABLED (int ) ;
 int cpuid_feature_extract (int ,int ) ;
 int pr_efi_err (int *,char*) ;

efi_status_t check_platform_features(efi_system_table_t *sys_table_arg)
{
 int block;


 if (!IS_ENABLED(CONFIG_ARM_LPAE))
  return EFI_SUCCESS;


 block = cpuid_feature_extract(CPUID_EXT_MMFR0, 0);
 if (block < 5) {
  pr_efi_err(sys_table_arg, "This LPAE kernel is not supported by your CPU\n");
  return EFI_UNSUPPORTED;
 }
 return EFI_SUCCESS;
}
