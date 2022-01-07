
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct efi_boot_memmap {unsigned long* map_size; unsigned long* desc_size; unsigned long* buff_size; int * key_ptr; int * desc_ver; TYPE_1__** map; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef unsigned long efi_physical_addr_t ;
struct TYPE_3__ {unsigned long phys_addr; unsigned long num_pages; int type; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 int EFI_ALLOCATE_ADDRESS ;
 int EFI_ALLOCATE_MAX_ADDRESS ;





 scalar_t__ EFI_OUT_OF_RESOURCES ;
 unsigned long EFI_PAGE_SIZE ;
 scalar_t__ EFI_SUCCESS ;
 unsigned long MAX_UNCOMP_KERNEL_SIZE ;
 int allocate_pages ;
 scalar_t__ efi_call_early (int ,TYPE_1__*,...) ;
 scalar_t__ efi_get_memory_map (int *,struct efi_boot_memmap*) ;
 int free_pool ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,int ) ;
 int pr_efi_err (int *,char*) ;

__attribute__((used)) static efi_status_t reserve_kernel_base(efi_system_table_t *sys_table_arg,
     unsigned long dram_base,
     unsigned long *reserve_addr,
     unsigned long *reserve_size)
{
 efi_physical_addr_t alloc_addr;
 efi_memory_desc_t *memory_map;
 unsigned long nr_pages, map_size, desc_size, buff_size;
 efi_status_t status;
 unsigned long l;

 struct efi_boot_memmap map = {
  .map = &memory_map,
  .map_size = &map_size,
  .desc_size = &desc_size,
  .desc_ver = ((void*)0),
  .key_ptr = ((void*)0),
  .buff_size = &buff_size,
 };
 alloc_addr = dram_base + MAX_UNCOMP_KERNEL_SIZE;
 nr_pages = MAX_UNCOMP_KERNEL_SIZE / EFI_PAGE_SIZE;
 status = efi_call_early(allocate_pages, EFI_ALLOCATE_MAX_ADDRESS,
    131, nr_pages, &alloc_addr);
 if (status == EFI_SUCCESS) {
  if (alloc_addr == dram_base) {
   *reserve_addr = alloc_addr;
   *reserve_size = MAX_UNCOMP_KERNEL_SIZE;
   return EFI_SUCCESS;
  }
 }







 status = efi_get_memory_map(sys_table_arg, &map);
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table_arg,
      "reserve_kernel_base(): Unable to retrieve memory map.\n");
  return status;
 }

 for (l = 0; l < map_size; l += desc_size) {
  efi_memory_desc_t *desc;
  u64 start, end;

  desc = (void *)memory_map + l;
  start = desc->phys_addr;
  end = start + desc->num_pages * EFI_PAGE_SIZE;


  if (start >= dram_base + MAX_UNCOMP_KERNEL_SIZE ||
      end <= dram_base)
   continue;

  switch (desc->type) {
  case 132:
  case 131:

   continue;

  case 130:




   start = max(start, (u64)dram_base);
   end = min(end, (u64)dram_base + MAX_UNCOMP_KERNEL_SIZE);

   status = efi_call_early(allocate_pages,
      EFI_ALLOCATE_ADDRESS,
      128,
      (end - start) / EFI_PAGE_SIZE,
      &start);
   if (status != EFI_SUCCESS) {
    pr_efi_err(sys_table_arg,
     "reserve_kernel_base(): alloc failed.\n");
    goto out;
   }
   break;

  case 129:
  case 128:






  default:


   status = EFI_OUT_OF_RESOURCES;
   goto out;
  }
 }

 status = EFI_SUCCESS;
out:
 efi_call_early(free_pool, memory_map);
 return status;
}
