
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
struct TYPE_4__ {int file_size; } ;
typedef TYPE_1__ efi_file_info_t ;
typedef void efi_file_handle_t ;
typedef int efi_char16_t ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 int EFI_FILE_INFO_ID ;
 int EFI_FILE_MODE_READ ;
 int EFI_LOADER_DATA ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,TYPE_1__*,...) ;
 scalar_t__ efi_call_proto (int ,int ,void*,void**,unsigned long*,TYPE_1__*,...) ;
 int efi_char16_printk (int *,int *) ;
 int efi_file_handle ;
 int efi_printk (int *,char*) ;
 int free_pool ;
 int get_info ;
 int open ;

__attribute__((used)) static efi_status_t efi_file_size(efi_system_table_t *sys_table_arg, void *__fh,
      efi_char16_t *filename_16, void **handle,
      u64 *file_sz)
{
 efi_file_handle_t *h, *fh = __fh;
 efi_file_info_t *info;
 efi_status_t status;
 efi_guid_t info_guid = EFI_FILE_INFO_ID;
 unsigned long info_sz;

 status = efi_call_proto(efi_file_handle, open, fh, &h, filename_16,
    EFI_FILE_MODE_READ, (u64)0);
 if (status != EFI_SUCCESS) {
  efi_printk(sys_table_arg, "Failed to open file: ");
  efi_char16_printk(sys_table_arg, filename_16);
  efi_printk(sys_table_arg, "\n");
  return status;
 }

 *handle = h;

 info_sz = 0;
 status = efi_call_proto(efi_file_handle, get_info, h, &info_guid,
    &info_sz, ((void*)0));
 if (status != EFI_BUFFER_TOO_SMALL) {
  efi_printk(sys_table_arg, "Failed to get file info size\n");
  return status;
 }

grow:
 status = efi_call_early(allocate_pool, EFI_LOADER_DATA,
    info_sz, (void **)&info);
 if (status != EFI_SUCCESS) {
  efi_printk(sys_table_arg, "Failed to alloc mem for file info\n");
  return status;
 }

 status = efi_call_proto(efi_file_handle, get_info, h, &info_guid,
    &info_sz, info);
 if (status == EFI_BUFFER_TOO_SMALL) {
  efi_call_early(free_pool, info);
  goto grow;
 }

 *file_sz = info->file_size;
 efi_call_early(free_pool, info);

 if (status != EFI_SUCCESS)
  efi_printk(sys_table_arg, "Failed to get initrd info\n");

 return status;
}
