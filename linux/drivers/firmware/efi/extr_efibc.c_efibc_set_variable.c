
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Data; int VendorGuid; int * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef int guid ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LINUX_EFI_LOADER_ENTRY_GUID ;
 int efibc_str_to_str16 (char const*,int *) ;
 int efivar_entry_set_safe (int *,int ,int,int,size_t,scalar_t__) ;
 int kfree (struct efivar_entry*) ;
 struct efivar_entry* kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_err (char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static int efibc_set_variable(const char *name, const char *value)
{
 int ret;
 efi_guid_t guid = LINUX_EFI_LOADER_ENTRY_GUID;
 struct efivar_entry *entry;
 size_t size = (strlen(value) + 1) * sizeof(efi_char16_t);

 if (size > sizeof(entry->var.Data)) {
  pr_err("value is too large (%zu bytes) for '%s' EFI variable\n", size, name);
  return -EINVAL;
 }

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  pr_err("failed to allocate efivar entry for '%s' EFI variable\n", name);
  return -ENOMEM;
 }

 efibc_str_to_str16(name, entry->var.VariableName);
 efibc_str_to_str16(value, (efi_char16_t *)entry->var.Data);
 memcpy(&entry->var.VendorGuid, &guid, sizeof(guid));

 ret = efivar_entry_set_safe(entry->var.VariableName,
        entry->var.VendorGuid,
        EFI_VARIABLE_NON_VOLATILE
        | EFI_VARIABLE_BOOTSERVICE_ACCESS
        | EFI_VARIABLE_RUNTIME_ACCESS,
        0, size, entry->var.Data);

 if (ret)
  pr_err("failed to set %s EFI variable: 0x%x\n",
         name, ret);

 kfree(entry);
 return ret;
}
