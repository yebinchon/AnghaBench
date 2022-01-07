
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_boot_memmap {int * map; int * key_ptr; int desc_ver; int desc_size; int * map_size; int * buff_size; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef scalar_t__ (* efi_exit_boot_map_processing ) (int *,struct efi_boot_memmap*,void*) ;


 scalar_t__ EFI_INVALID_PARAMETER ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ efi_call_early (int ,void*,...) ;
 scalar_t__ efi_get_memory_map (int *,struct efi_boot_memmap*) ;
 int exit_boot_services ;
 int free_pool ;
 int get_memory_map ;

efi_status_t efi_exit_boot_services(efi_system_table_t *sys_table_arg,
        void *handle,
        struct efi_boot_memmap *map,
        void *priv,
        efi_exit_boot_map_processing priv_func)
{
 efi_status_t status;

 status = efi_get_memory_map(sys_table_arg, map);

 if (status != EFI_SUCCESS)
  goto fail;

 status = priv_func(sys_table_arg, map, priv);
 if (status != EFI_SUCCESS)
  goto free_map;

 status = efi_call_early(exit_boot_services, handle, *map->key_ptr);

 if (status == EFI_INVALID_PARAMETER) {
  *map->map_size = *map->buff_size;
  status = efi_call_early(get_memory_map,
     map->map_size,
     *map->map,
     map->key_ptr,
     map->desc_size,
     map->desc_ver);


  if (status != EFI_SUCCESS)
   goto fail;

  status = priv_func(sys_table_arg, map, priv);

  if (status != EFI_SUCCESS)
   goto fail;

  status = efi_call_early(exit_boot_services, handle, *map->key_ptr);
 }


 if (status != EFI_SUCCESS)
  goto fail;

 return EFI_SUCCESS;

free_map:
 efi_call_early(free_pool, *map->map);
fail:
 return status;
}
