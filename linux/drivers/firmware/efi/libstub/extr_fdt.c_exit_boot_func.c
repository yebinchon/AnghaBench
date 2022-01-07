
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exit_boot_struct {int new_fdt_addr; int runtime_entry_count; int runtime_map; } ;
struct efi_boot_memmap {int * desc_size; int * map_size; int * map; } ;
typedef int efi_system_table_t ;
typedef int efi_status_t ;


 int efi_get_virtmap (int ,int ,int ,int ,int ) ;
 int update_fdt_memmap (int ,struct efi_boot_memmap*) ;

__attribute__((used)) static efi_status_t exit_boot_func(efi_system_table_t *sys_table_arg,
       struct efi_boot_memmap *map,
       void *priv)
{
 struct exit_boot_struct *p = priv;





 efi_get_virtmap(*map->map, *map->map_size, *map->desc_size,
   p->runtime_map, p->runtime_entry_count);

 return update_fdt_memmap(p->new_fdt_addr, map);
}
