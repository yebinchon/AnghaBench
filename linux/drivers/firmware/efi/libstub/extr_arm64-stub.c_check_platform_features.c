
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int efi_system_table_t ;
typedef int efi_status_t ;


 int CONFIG_ARM64_4K_PAGES ;
 int CONFIG_ARM64_64K_PAGES ;
 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int ID_AA64MMFR0_EL1 ;
 int ID_AA64MMFR0_TGRAN_SHIFT ;
 int ID_AA64MMFR0_TGRAN_SUPPORTED ;
 scalar_t__ IS_ENABLED (int ) ;
 int pr_efi_err (int *,char*) ;
 int read_cpuid (int ) ;

efi_status_t check_platform_features(efi_system_table_t *sys_table_arg)
{
 u64 tg;


 if (IS_ENABLED(CONFIG_ARM64_4K_PAGES))
  return EFI_SUCCESS;

 tg = (read_cpuid(ID_AA64MMFR0_EL1) >> ID_AA64MMFR0_TGRAN_SHIFT) & 0xf;
 if (tg != ID_AA64MMFR0_TGRAN_SUPPORTED) {
  if (IS_ENABLED(CONFIG_ARM64_64K_PAGES))
   pr_efi_err(sys_table_arg, "This 64 KB granular kernel is not supported by your CPU\n");
  else
   pr_efi_err(sys_table_arg, "This 16 KB granular kernel is not supported by your CPU\n");
  return EFI_UNSUPPORTED;
 }
 return EFI_SUCCESS;
}
