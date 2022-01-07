
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef void* u16 ;
struct screen_info {int lfb_height; int lfb_base; int ext_lfb_base; int pages; int lfb_size; int lfb_linelength; int capabilities; void* lfb_width; int orig_video_isVGA; } ;
struct efi_pixel_bitmask {int dummy; } ;
struct efi_graphics_output_protocol_32 {int dummy; } ;
struct efi_graphics_output_mode_info {int pixel_format; int pixels_per_scan_line; struct efi_pixel_bitmask pixel_information; void* vertical_resolution; void* horizontal_resolution; } ;
typedef int efi_system_table_t ;
typedef int efi_status_t ;
typedef int efi_handle_t ;
typedef int efi_guid_t ;


 int EFI_CONSOLE_OUT_DEVICE_GUID ;
 int EFI_NOT_FOUND ;
 int EFI_SUCCESS ;
 int PIXEL_BLT_ONLY ;
 int VIDEO_CAPABILITY_64BIT_BASE ;
 int VIDEO_CAPABILITY_SKIP_QUIRKS ;
 int VIDEO_TYPE_EFI ;
 int __gop_query32 (int *,struct efi_graphics_output_protocol_32*,struct efi_graphics_output_mode_info**,unsigned long*,int*) ;
 int efi_call_early (int ,int ,int *,void**) ;
 int handle_protocol ;
 int setup_pixel_info (struct screen_info*,int,struct efi_pixel_bitmask,int) ;

__attribute__((used)) static efi_status_t
setup_gop32(efi_system_table_t *sys_table_arg, struct screen_info *si,
            efi_guid_t *proto, unsigned long size, void **gop_handle)
{
 struct efi_graphics_output_protocol_32 *gop32, *first_gop;
 unsigned long nr_gops;
 u16 width, height;
 u32 pixels_per_scan_line;
 u32 ext_lfb_base;
 u64 fb_base;
 struct efi_pixel_bitmask pixel_info;
 int pixel_format;
 efi_status_t status = EFI_NOT_FOUND;
 u32 *handles = (u32 *)(unsigned long)gop_handle;
 int i;

 first_gop = ((void*)0);
 gop32 = ((void*)0);

 nr_gops = size / sizeof(u32);
 for (i = 0; i < nr_gops; i++) {
  struct efi_graphics_output_mode_info *info = ((void*)0);
  efi_guid_t conout_proto = EFI_CONSOLE_OUT_DEVICE_GUID;
  bool conout_found = 0;
  void *dummy = ((void*)0);
  efi_handle_t h = (efi_handle_t)(unsigned long)handles[i];
  u64 current_fb_base;

  status = efi_call_early(handle_protocol, h,
     proto, (void **)&gop32);
  if (status != EFI_SUCCESS)
   continue;

  status = efi_call_early(handle_protocol, h,
     &conout_proto, &dummy);
  if (status == EFI_SUCCESS)
   conout_found = 1;

  status = __gop_query32(sys_table_arg, gop32, &info, &size,
           &current_fb_base);
  if (status == EFI_SUCCESS && (!first_gop || conout_found) &&
      info->pixel_format != PIXEL_BLT_ONLY) {







   width = info->horizontal_resolution;
   height = info->vertical_resolution;
   pixel_format = info->pixel_format;
   pixel_info = info->pixel_information;
   pixels_per_scan_line = info->pixels_per_scan_line;
   fb_base = current_fb_base;





   first_gop = gop32;
   if (conout_found)
    break;
  }
 }


 if (!first_gop)
  goto out;


 si->orig_video_isVGA = VIDEO_TYPE_EFI;

 si->lfb_width = width;
 si->lfb_height = height;
 si->lfb_base = fb_base;

 ext_lfb_base = (u64)(unsigned long)fb_base >> 32;
 if (ext_lfb_base) {
  si->capabilities |= VIDEO_CAPABILITY_64BIT_BASE;
  si->ext_lfb_base = ext_lfb_base;
 }

 si->pages = 1;

 setup_pixel_info(si, pixels_per_scan_line, pixel_info, pixel_format);

 si->lfb_size = si->lfb_linelength * si->lfb_height;

 si->capabilities |= VIDEO_CAPABILITY_SKIP_QUIRKS;
out:
 return status;
}
