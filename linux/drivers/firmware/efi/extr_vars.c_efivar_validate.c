
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {char* name; int (* validate ) (int *,int,char*,unsigned long) ;int vendor; } ;


 int GFP_KERNEL ;
 scalar_t__ efi_guidcmp (int ,int ) ;
 int kfree (char*) ;
 char* kmalloc (unsigned long,int ) ;
 int stub1 (int *,int,char*,unsigned long) ;
 int ucs2_as_utf8 (char*,int *,unsigned long) ;
 unsigned long ucs2_utf8size (int *) ;
 scalar_t__ variable_matches (char*,unsigned long,char const*,int*) ;
 TYPE_1__* variable_validate ;

bool
efivar_validate(efi_guid_t vendor, efi_char16_t *var_name, u8 *data,
  unsigned long data_size)
{
 int i;
 unsigned long utf8_size;
 u8 *utf8_name;

 utf8_size = ucs2_utf8size(var_name);
 utf8_name = kmalloc(utf8_size + 1, GFP_KERNEL);
 if (!utf8_name)
  return 0;

 ucs2_as_utf8(utf8_name, var_name, utf8_size);
 utf8_name[utf8_size] = '\0';

 for (i = 0; variable_validate[i].name[0] != '\0'; i++) {
  const char *name = variable_validate[i].name;
  int match = 0;

  if (efi_guidcmp(vendor, variable_validate[i].vendor))
   continue;

  if (variable_matches(utf8_name, utf8_size+1, name, &match)) {
   if (variable_validate[i].validate == ((void*)0))
    break;
   kfree(utf8_name);
   return variable_validate[i].validate(var_name, match,
            data, data_size);
  }
 }
 kfree(utf8_name);
 return 1;
}
