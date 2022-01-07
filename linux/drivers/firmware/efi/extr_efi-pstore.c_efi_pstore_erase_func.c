
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int VariableName; int VendorGuid; } ;
struct efivar_entry {int deleting; int list; scalar_t__ scanning; TYPE_1__ var; } ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int LINUX_EFI_CRASH_GUID ;
 int __efivar_entry_delete (struct efivar_entry*) ;
 scalar_t__ efi_guidcmp (int ,int ) ;
 int list_del (int *) ;
 unsigned long ucs2_strlen (int *) ;
 scalar_t__ ucs2_strncmp (int ,int *,size_t) ;

__attribute__((used)) static int efi_pstore_erase_func(struct efivar_entry *entry, void *data)
{
 efi_char16_t *efi_name = data;
 efi_guid_t vendor = LINUX_EFI_CRASH_GUID;
 unsigned long ucs2_len = ucs2_strlen(efi_name);

 if (efi_guidcmp(entry->var.VendorGuid, vendor))
  return 0;

 if (ucs2_strncmp(entry->var.VariableName, efi_name, (size_t)ucs2_len))
  return 0;

 if (entry->scanning) {




  entry->deleting = 1;
 } else
  list_del(&entry->list);


 __efivar_entry_delete(entry);

 return 1;
}
