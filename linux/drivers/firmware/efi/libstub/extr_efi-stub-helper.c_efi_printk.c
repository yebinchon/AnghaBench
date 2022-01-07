
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_system_table_t ;
typedef char efi_char16_t ;


 int efi_char16_printk (int *,char*) ;

void efi_printk(efi_system_table_t *sys_table_arg, char *str)
{
 char *s8;

 for (s8 = str; *s8; s8++) {
  efi_char16_t ch[2] = { 0 };

  ch[0] = *s8;
  if (*s8 == '\n') {
   efi_char16_t nl[2] = { '\r', 0 };
   efi_char16_printk(sys_table_arg, nl);
  }

  efi_char16_printk(sys_table_arg, ch);
 }
}
