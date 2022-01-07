
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int efi_char16_t ;



__attribute__((used)) static bool
validate_ascii_string(efi_char16_t *var_name, int match, u8 *buffer,
        unsigned long len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (buffer[i] > 127)
   return 0;

  if (buffer[i] == 0)
   return 1;
 }

 return 0;
}
