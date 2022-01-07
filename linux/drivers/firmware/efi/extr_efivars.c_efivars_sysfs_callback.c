
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VendorGuid; int * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int efivar_create_sysfs_entry (struct efivar_entry*) ;
 struct efivar_entry* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int efivars_sysfs_callback(efi_char16_t *name, efi_guid_t vendor,
      unsigned long name_size, void *data)
{
 struct efivar_entry *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 memcpy(entry->var.VariableName, name, name_size);
 memcpy(&(entry->var.VendorGuid), &vendor, sizeof(efi_guid_t));

 efivar_create_sysfs_entry(entry);

 return 0;
}
