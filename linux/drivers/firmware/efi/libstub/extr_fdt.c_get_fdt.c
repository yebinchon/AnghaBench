
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;


 int DEVICE_TREE_GUID ;
 scalar_t__ fdt_check_header (void*) ;
 unsigned long fdt_totalsize (void*) ;
 void* get_efi_config_table (int *,int ) ;
 int pr_efi_err (int *,char*) ;

void *get_fdt(efi_system_table_t *sys_table, unsigned long *fdt_size)
{
 void *fdt;

 fdt = get_efi_config_table(sys_table, DEVICE_TREE_GUID);

 if (!fdt)
  return ((void*)0);

 if (fdt_check_header(fdt) != 0) {
  pr_efi_err(sys_table, "Invalid header detected on UEFI supplied FDT, ignoring ...\n");
  return ((void*)0);
 }
 *fdt_size = fdt_totalsize(fdt);
 return fdt;
}
