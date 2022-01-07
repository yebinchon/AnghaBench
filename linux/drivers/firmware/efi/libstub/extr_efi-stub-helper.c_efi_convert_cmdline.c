
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef char u16 ;
typedef int efi_system_table_t ;
typedef scalar_t__ efi_status_t ;
struct TYPE_3__ {int load_options_size; char* load_options; } ;
typedef TYPE_1__ efi_loaded_image_t ;


 scalar_t__ EFI_SUCCESS ;
 int MAX_CMDLINE_ADDRESS ;
 scalar_t__ efi_high_alloc (int *,int,int ,unsigned long*,int ) ;
 char* efi_utf16_to_utf8 (char*,char const*,int) ;
 scalar_t__ efi_utf8_bytes (int ) ;

char *efi_convert_cmdline(efi_system_table_t *sys_table_arg,
     efi_loaded_image_t *image,
     int *cmd_line_len)
{
 const u16 *s2;
 u8 *s1 = ((void*)0);
 unsigned long cmdline_addr = 0;
 int load_options_chars = image->load_options_size / 2;
 const u16 *options = image->load_options;
 int options_bytes = 0;
 int options_chars = 0;
 efi_status_t status;
 u16 zero = 0;

 if (options) {
  s2 = options;
  while (*s2 && *s2 != '\n'
         && options_chars < load_options_chars) {
   options_bytes += efi_utf8_bytes(*s2++);
   options_chars++;
  }
 }

 if (!options_chars) {

  options = &zero;
 }

 options_bytes++;

 status = efi_high_alloc(sys_table_arg, options_bytes, 0,
    &cmdline_addr, MAX_CMDLINE_ADDRESS);
 if (status != EFI_SUCCESS)
  return ((void*)0);

 s1 = (u8 *)cmdline_addr;
 s2 = (const u16 *)options;

 s1 = efi_utf16_to_utf8(s1, s2, options_chars);
 *s1 = '\0';

 *cmd_line_len = options_bytes;
 return (char *)cmdline_addr;
}
