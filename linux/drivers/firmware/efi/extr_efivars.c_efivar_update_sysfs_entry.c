
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VendorGuid; int * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 scalar_t__ efivar_entry_find (int *,int ,int *,int) ;
 int efivar_sysfs_list ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int efivar_update_sysfs_entry(efi_char16_t *name, efi_guid_t vendor,
         unsigned long name_size, void *data)
{
 struct efivar_entry *entry = data;

 if (efivar_entry_find(name, vendor, &efivar_sysfs_list, 0))
  return 0;

 memcpy(entry->var.VariableName, name, name_size);
 memcpy(&(entry->var.VendorGuid), &vendor, sizeof(efi_guid_t));

 return 1;
}
