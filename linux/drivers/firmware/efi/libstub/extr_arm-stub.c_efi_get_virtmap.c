
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_11__ {int attribute; int phys_addr; int num_pages; int virt_addr; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 int CONFIG_ARM64 ;
 int EFI_MEMORY_RUNTIME ;
 int EFI_PAGE_SIZE ;
 scalar_t__ IS_ALIGNED (int,int) ;
 scalar_t__ IS_ENABLED (int ) ;
 int SZ_2M ;
 int SZ_64K ;
 int cmp_mem_desc ;
 int memcpy (TYPE_1__*,TYPE_1__*,unsigned long) ;
 scalar_t__ novamap () ;
 int regions_are_adjacent (TYPE_1__*,TYPE_1__*) ;
 int regions_have_compatible_memory_type_attrs (TYPE_1__*,TYPE_1__*) ;
 int round_down (int,int) ;
 int round_up (int,int) ;
 int sort (TYPE_1__*,unsigned long,unsigned long,int ,int *) ;
 int virtmap_base ;

void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
       unsigned long desc_size, efi_memory_desc_t *runtime_map,
       int *count)
{
 u64 efi_virt_base = virtmap_base;
 efi_memory_desc_t *in, *prev = ((void*)0), *out = runtime_map;
 int l;
 if (IS_ENABLED(CONFIG_ARM64))
  sort(memory_map, map_size / desc_size, desc_size, cmp_mem_desc,
       ((void*)0));

 for (l = 0; l < map_size; l += desc_size, prev = in) {
  u64 paddr, size;

  in = (void *)memory_map + l;
  if (!(in->attribute & EFI_MEMORY_RUNTIME))
   continue;

  paddr = in->phys_addr;
  size = in->num_pages * EFI_PAGE_SIZE;

  if (novamap()) {
   in->virt_addr = in->phys_addr;
   continue;
  }






  if ((IS_ENABLED(CONFIG_ARM64) &&
       !regions_are_adjacent(prev, in)) ||
      !regions_have_compatible_memory_type_attrs(prev, in)) {

   paddr = round_down(in->phys_addr, SZ_64K);
   size += in->phys_addr - paddr;







   if (IS_ALIGNED(in->phys_addr, SZ_2M) && size >= SZ_2M)
    efi_virt_base = round_up(efi_virt_base, SZ_2M);
   else
    efi_virt_base = round_up(efi_virt_base, SZ_64K);
  }

  in->virt_addr = efi_virt_base + in->phys_addr - paddr;
  efi_virt_base += size;

  memcpy(out, in, desc_size);
  out = (void *)out + desc_size;
  ++*count;
 }
}
