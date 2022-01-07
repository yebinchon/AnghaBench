
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;


 int EFI_DT_ADDR_CELLS_DEFAULT ;
 int EFI_DT_SIZE_CELLS_DEFAULT ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop_u32 (void*,int,char*,int ) ;

__attribute__((used)) static void fdt_update_cell_size(efi_system_table_t *sys_table, void *fdt)
{
 int offset;

 offset = fdt_path_offset(fdt, "/");


 fdt_setprop_u32(fdt, offset, "#address-cells", EFI_DT_ADDR_CELLS_DEFAULT);
 fdt_setprop_u32(fdt, offset, "#size-cells", EFI_DT_SIZE_CELLS_DEFAULT);
}
