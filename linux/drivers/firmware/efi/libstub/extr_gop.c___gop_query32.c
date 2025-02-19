
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct efi_graphics_output_protocol_mode_32 {int frame_buffer_base; int mode; } ;
struct efi_graphics_output_protocol_32 {unsigned long mode; scalar_t__ query_mode; } ;
struct efi_graphics_output_mode_info {int dummy; } ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
typedef void* efi_graphics_output_protocol_query_mode ;


 scalar_t__ EFI_SUCCESS ;
 scalar_t__ __efi_call_early (void*,void*,int ,unsigned long*,struct efi_graphics_output_mode_info**) ;

__attribute__((used)) static efi_status_t
__gop_query32(efi_system_table_t *sys_table_arg,
       struct efi_graphics_output_protocol_32 *gop32,
       struct efi_graphics_output_mode_info **info,
       unsigned long *size, u64 *fb_base)
{
 struct efi_graphics_output_protocol_mode_32 *mode;
 efi_graphics_output_protocol_query_mode query_mode;
 efi_status_t status;
 unsigned long m;

 m = gop32->mode;
 mode = (struct efi_graphics_output_protocol_mode_32 *)m;
 query_mode = (void *)(unsigned long)gop32->query_mode;

 status = __efi_call_early(query_mode, (void *)gop32, mode->mode, size,
      info);
 if (status != EFI_SUCCESS)
  return status;

 *fb_base = mode->frame_buffer_base;
 return status;
}
