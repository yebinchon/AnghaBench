
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int phys_seed ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_physical_addr_t ;
typedef int efi_loaded_image_t ;


 int CONFIG_DEBUG_ALIGN_RODATA ;
 int CONFIG_RANDOMIZE_BASE ;
 int EFI_ALLOCATE_ADDRESS ;
 int EFI_ALLOC_ALIGN ;
 int EFI_KIMG_ALIGN ;
 int EFI_LOADER_DATA ;
 scalar_t__ EFI_NOT_FOUND ;
 unsigned long EFI_PAGE_SIZE ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long MIN_KIMG_ALIGN ;
 int TEXT_OFFSET ;
 unsigned long _edata ;
 unsigned long _end ;
 unsigned long _text ;
 int allocate_pages ;
 scalar_t__ efi_call_early (int ,int ,int ,unsigned long,int *) ;
 scalar_t__ efi_get_random_bytes (int *,int,int *) ;
 scalar_t__ efi_low_alloc (int *,unsigned long,unsigned long,unsigned long*) ;
 scalar_t__ efi_random_alloc (int *,unsigned long,unsigned long,unsigned long*,int) ;
 int memcpy (void*,void*,unsigned long) ;
 int nokaslr () ;
 int pr_efi (int *,char*) ;
 int pr_efi_err (int *,char*) ;
 int round_down (unsigned long,unsigned long) ;
 unsigned long round_up (unsigned long,int ) ;

efi_status_t handle_kernel_image(efi_system_table_t *sys_table_arg,
     unsigned long *image_addr,
     unsigned long *image_size,
     unsigned long *reserve_addr,
     unsigned long *reserve_size,
     unsigned long dram_base,
     efi_loaded_image_t *image)
{
 efi_status_t status;
 unsigned long kernel_size, kernel_memsize = 0;
 void *old_image_addr = (void *)*image_addr;
 unsigned long preferred_offset;
 u64 phys_seed = 0;

 if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
  if (!nokaslr()) {
   status = efi_get_random_bytes(sys_table_arg,
            sizeof(phys_seed),
            (u8 *)&phys_seed);
   if (status == EFI_NOT_FOUND) {
    pr_efi(sys_table_arg, "EFI_RNG_PROTOCOL unavailable, no randomness supplied\n");
   } else if (status != EFI_SUCCESS) {
    pr_efi_err(sys_table_arg, "efi_get_random_bytes() failed\n");
    return status;
   }
  } else {
   pr_efi(sys_table_arg, "KASLR disabled on kernel command line\n");
  }
 }






 preferred_offset = round_down(dram_base, MIN_KIMG_ALIGN) + TEXT_OFFSET;
 if (preferred_offset < dram_base)
  preferred_offset += MIN_KIMG_ALIGN;

 kernel_size = _edata - _text;
 kernel_memsize = kernel_size + (_end - _edata);

 if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && phys_seed != 0) {






  u32 mask = (MIN_KIMG_ALIGN - 1) & ~(EFI_KIMG_ALIGN - 1);
  u32 offset = !IS_ENABLED(CONFIG_DEBUG_ALIGN_RODATA) ?
        (phys_seed >> 32) & mask : TEXT_OFFSET;
  offset |= TEXT_OFFSET % EFI_KIMG_ALIGN;





  *reserve_size = kernel_memsize + offset;
  status = efi_random_alloc(sys_table_arg, *reserve_size,
       MIN_KIMG_ALIGN, reserve_addr,
       (u32)phys_seed);

  *image_addr = *reserve_addr + offset;
 } else {
  if (*image_addr == preferred_offset)
   return EFI_SUCCESS;

  *image_addr = *reserve_addr = preferred_offset;
  *reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);

  status = efi_call_early(allocate_pages, EFI_ALLOCATE_ADDRESS,
     EFI_LOADER_DATA,
     *reserve_size / EFI_PAGE_SIZE,
     (efi_physical_addr_t *)reserve_addr);
 }

 if (status != EFI_SUCCESS) {
  *reserve_size = kernel_memsize + TEXT_OFFSET;
  status = efi_low_alloc(sys_table_arg, *reserve_size,
           MIN_KIMG_ALIGN, reserve_addr);

  if (status != EFI_SUCCESS) {
   pr_efi_err(sys_table_arg, "Failed to relocate kernel\n");
   *reserve_size = 0;
   return status;
  }
  *image_addr = *reserve_addr + TEXT_OFFSET;
 }
 memcpy((void *)*image_addr, old_image_addr, kernel_size);

 return EFI_SUCCESS;
}
