
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int efi_char16_t ;


 int EFI_VAR_NAME_LEN ;
 scalar_t__ hex_to_bin (int) ;
 int ucs2_strnlen (int*,int ) ;
 int ucs2_strsize (int*,unsigned long) ;
 int validate_device_path (int*,int,int*,int) ;

__attribute__((used)) static bool
validate_load_option(efi_char16_t *var_name, int match, u8 *buffer,
       unsigned long len)
{
 u16 filepathlength;
 int i, desclength = 0, namelen;

 namelen = ucs2_strnlen(var_name, EFI_VAR_NAME_LEN);


 for (i = match; i < match+4; i++) {
  if (var_name[i] > 127 ||
      hex_to_bin(var_name[i] & 0xff) < 0)
   return 1;
 }


 if (namelen > match + 4)
  return 0;


 if (len < 8)
  return 0;

 filepathlength = buffer[4] | buffer[5] << 8;





 desclength = ucs2_strsize((efi_char16_t *)(buffer + 6), len - 6) + 2;


 if (!desclength)
  return 0;






 if ((desclength + filepathlength + 6) > len)
  return 0;




 return validate_device_path(var_name, match, buffer + desclength + 6,
        filepathlength);
}
