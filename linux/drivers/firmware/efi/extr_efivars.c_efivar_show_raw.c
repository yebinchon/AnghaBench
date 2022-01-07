
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int DataSize; int Attributes; int VendorGuid; struct efi_variable* Data; struct efi_variable* VariableName; } ;
struct efivar_entry {struct efi_variable var; } ;
struct compat_efi_variable {char* VariableName; char* Data; int DataSize; int Attributes; int VendorGuid; } ;
typedef size_t ssize_t ;


 size_t EFI_VAR_NAME_LEN ;
 size_t EIO ;
 scalar_t__ efivar_entry_get (struct efivar_entry*,int *,int*,struct efi_variable*) ;
 scalar_t__ in_compat_syscall () ;
 int memcpy (char*,struct efi_variable*,size_t) ;

__attribute__((used)) static ssize_t
efivar_show_raw(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;
 struct compat_efi_variable *compat;
 size_t size;

 if (!entry || !buf)
  return 0;

 var->DataSize = 1024;
 if (efivar_entry_get(entry, &entry->var.Attributes,
        &entry->var.DataSize, entry->var.Data))
  return -EIO;

 if (in_compat_syscall()) {
  compat = (struct compat_efi_variable *)buf;

  size = sizeof(*compat);
  memcpy(compat->VariableName, var->VariableName,
   EFI_VAR_NAME_LEN);
  memcpy(compat->Data, var->Data, sizeof(compat->Data));

  compat->VendorGuid = var->VendorGuid;
  compat->DataSize = var->DataSize;
  compat->Attributes = var->Attributes;
 } else {
  size = sizeof(*var);
  memcpy(buf, var, size);
 }

 return size;
}
