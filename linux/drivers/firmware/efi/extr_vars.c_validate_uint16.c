
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int efi_char16_t ;



__attribute__((used)) static bool
validate_uint16(efi_char16_t *var_name, int match, u8 *buffer,
  unsigned long len)
{

 if (len != 2)
  return 0;

 return 1;
}
