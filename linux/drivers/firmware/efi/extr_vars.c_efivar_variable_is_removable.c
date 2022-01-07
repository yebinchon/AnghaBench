
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_guid_t ;
struct TYPE_2__ {char* name; int vendor; } ;


 scalar_t__ efi_guidcmp (int ,int ) ;
 scalar_t__ variable_matches (char const*,size_t,char*,int*) ;
 TYPE_1__* variable_validate ;

bool
efivar_variable_is_removable(efi_guid_t vendor, const char *var_name,
        size_t len)
{
 int i;
 bool found = 0;
 int match = 0;




 for (i = 0; variable_validate[i].name[0] != '\0'; i++) {
  if (efi_guidcmp(variable_validate[i].vendor, vendor))
   continue;

  if (variable_matches(var_name, len,
         variable_validate[i].name, &match)) {
   found = 1;
   break;
  }
 }




 return found;
}
