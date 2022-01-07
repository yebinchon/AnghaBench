
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct efi_boot_memmap {int * desc_ver; int * desc_size; int * map_size; scalar_t__* map; } ;
typedef int efi_status_t ;


 int EFI_LOAD_ERROR ;
 int EFI_SUCCESS ;
 int cpu_to_fdt32 (int ) ;
 int cpu_to_fdt64 (unsigned long) ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop_inplace_var (void*,int,char*,int ) ;

__attribute__((used)) static efi_status_t update_fdt_memmap(void *fdt, struct efi_boot_memmap *map)
{
 int node = fdt_path_offset(fdt, "/chosen");
 u64 fdt_val64;
 u32 fdt_val32;
 int err;

 if (node < 0)
  return EFI_LOAD_ERROR;

 fdt_val64 = cpu_to_fdt64((unsigned long)*map->map);

 err = fdt_setprop_inplace_var(fdt, node, "linux,uefi-mmap-start", fdt_val64);
 if (err)
  return EFI_LOAD_ERROR;

 fdt_val32 = cpu_to_fdt32(*map->map_size);

 err = fdt_setprop_inplace_var(fdt, node, "linux,uefi-mmap-size", fdt_val32);
 if (err)
  return EFI_LOAD_ERROR;

 fdt_val32 = cpu_to_fdt32(*map->desc_size);

 err = fdt_setprop_inplace_var(fdt, node, "linux,uefi-mmap-desc-size", fdt_val32);
 if (err)
  return EFI_LOAD_ERROR;

 fdt_val32 = cpu_to_fdt32(*map->desc_ver);

 err = fdt_setprop_inplace_var(fdt, node, "linux,uefi-mmap-desc-ver", fdt_val32);
 if (err)
  return EFI_LOAD_ERROR;

 return EFI_SUCCESS;
}
