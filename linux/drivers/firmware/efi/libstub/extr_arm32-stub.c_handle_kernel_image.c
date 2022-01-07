
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
struct TYPE_3__ {unsigned long image_size; } ;
typedef TYPE_1__ efi_loaded_image_t ;


 scalar_t__ EFI_LOAD_ERROR ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ MAX_UNCOMP_KERNEL_SIZE ;
 int PAGE_SIZE ;
 int SZ_128M ;
 int TEXT_OFFSET ;
 unsigned long ZIMAGE_OFFSET_LIMIT ;
 int efi_free (int *,unsigned long,unsigned long) ;
 scalar_t__ efi_relocate_kernel (int *,unsigned long*,unsigned long,unsigned long,scalar_t__,int ,int ) ;
 int pr_efi_err (int *,char*) ;
 scalar_t__ reserve_kernel_base (int *,unsigned long,unsigned long*,unsigned long*) ;
 unsigned long round_up (unsigned long,int ) ;

efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
     unsigned long *image_addr,
     unsigned long *image_size,
     unsigned long *reserve_addr,
     unsigned long *reserve_size,
     unsigned long dram_base,
     efi_loaded_image_t *image)
{
 unsigned long kernel_base;
 efi_status_t status;
 kernel_base = round_up(dram_base, SZ_128M);
 kernel_base += TEXT_OFFSET - 5 * PAGE_SIZE;

 status = reserve_kernel_base(sys_table, kernel_base, reserve_addr,
         reserve_size);
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table, "Unable to allocate memory for uncompressed kernel.\n");
  return status;
 }





 *image_size = image->image_size;
 status = efi_relocate_kernel(sys_table, image_addr, *image_size,
         *image_size,
         kernel_base + MAX_UNCOMP_KERNEL_SIZE, 0, 0);
 if (status != EFI_SUCCESS) {
  pr_efi_err(sys_table, "Failed to relocate kernel.\n");
  efi_free(sys_table, *reserve_size, *reserve_addr);
  *reserve_size = 0;
  return status;
 }






 if (*image_addr + *image_size > dram_base + ZIMAGE_OFFSET_LIMIT) {
  pr_efi_err(sys_table, "Failed to relocate kernel, no low memory available.\n");
  efi_free(sys_table, *reserve_size, *reserve_addr);
  *reserve_size = 0;
  efi_free(sys_table, *image_size, *image_addr);
  *image_size = 0;
  return EFI_LOAD_ERROR;
 }
 return EFI_SUCCESS;
}
