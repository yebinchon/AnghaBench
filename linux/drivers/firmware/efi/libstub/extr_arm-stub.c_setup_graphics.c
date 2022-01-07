
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_info {int dummy; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 int EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID ;
 int EFI_LOCATE_BY_PROTOCOL ;
 struct screen_info* alloc_screen_info (int *) ;
 scalar_t__ efi_call_early (int ,int ,int *,int *,unsigned long*,void**) ;
 int efi_setup_gop (int *,struct screen_info*,int *,unsigned long) ;
 int locate_handle ;

__attribute__((used)) static struct screen_info *setup_graphics(efi_system_table_t *sys_table_arg)
{
 efi_guid_t gop_proto = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
 efi_status_t status;
 unsigned long size;
 void **gop_handle = ((void*)0);
 struct screen_info *si = ((void*)0);

 size = 0;
 status = efi_call_early(locate_handle, EFI_LOCATE_BY_PROTOCOL,
    &gop_proto, ((void*)0), &size, gop_handle);
 if (status == EFI_BUFFER_TOO_SMALL) {
  si = alloc_screen_info(sys_table_arg);
  if (!si)
   return ((void*)0);
  efi_setup_gop(sys_table_arg, si, &gop_proto, size);
 }
 return si;
}
