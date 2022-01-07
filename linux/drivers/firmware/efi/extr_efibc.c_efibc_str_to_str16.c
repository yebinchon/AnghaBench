
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char efi_char16_t ;


 size_t strlen (char const*) ;

__attribute__((used)) static void efibc_str_to_str16(const char *str, efi_char16_t *str16)
{
 size_t i;

 for (i = 0; i < strlen(str); i++)
  str16[i] = str[i];

 str16[i] = '\0';
}
