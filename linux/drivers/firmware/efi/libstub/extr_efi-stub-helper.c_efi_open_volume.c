
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_loaded_image_t ;
typedef int efi_guid_t ;
typedef int efi_file_io_interface_t ;
typedef int efi_file_handle_t ;


 int EFI_FILE_SYSTEM_GUID ;
 scalar_t__ EFI_SUCCESS ;
 int device_handle ;
 scalar_t__ efi_call_early (int ,void*,int *,void**) ;
 scalar_t__ efi_call_proto (int ,int ,int *,int **) ;
 int efi_file_io_interface ;
 int efi_loaded_image ;
 int efi_printk (int *,char*) ;
 scalar_t__ efi_table_attr (int ,int ,int *) ;
 int handle_protocol ;
 int open_volume ;

__attribute__((used)) static efi_status_t efi_open_volume(efi_system_table_t *sys_table_arg,
        efi_loaded_image_t *image,
        efi_file_handle_t **__fh)
{
 efi_file_io_interface_t *io;
 efi_file_handle_t *fh;
 efi_guid_t fs_proto = EFI_FILE_SYSTEM_GUID;
 efi_status_t status;
 void *handle = (void *)(unsigned long)efi_table_attr(efi_loaded_image,
            device_handle,
            image);

 status = efi_call_early(handle_protocol, handle,
    &fs_proto, (void **)&io);
 if (status != EFI_SUCCESS) {
  efi_printk(sys_table_arg, "Failed to handle fs_proto\n");
  return status;
 }

 status = efi_call_proto(efi_file_io_interface, open_volume, io, &fh);
 if (status != EFI_SUCCESS)
  efi_printk(sys_table_arg, "Failed to open volume\n");
 else
  *__fh = fh;

 return status;
}
