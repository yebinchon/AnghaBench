
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct efivar_operations {scalar_t__ (* set_variable ) (int *,int *,int ,unsigned long,void*) ;scalar_t__ (* get_variable ) (int *,int *,int *,unsigned long*,int *) ;} ;
struct TYPE_3__ {int VendorGuid; int * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;
struct TYPE_4__ {struct efivar_operations* ops; } ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ EFI_UNSUPPORTED ;
 int EINTR ;
 int EINVAL ;
 int ENOSPC ;
 TYPE_2__* __efivars ;
 scalar_t__ check_var_size (int ,scalar_t__) ;
 scalar_t__ down_interruptible (int *) ;
 int efi_status_to_err (scalar_t__) ;
 int efivar_entry_list_del_unlock (struct efivar_entry*) ;
 int efivar_validate (int ,int *,void*,unsigned long) ;
 int efivars_lock ;
 scalar_t__ stub1 (int *,int *,int ,unsigned long,void*) ;
 scalar_t__ stub2 (int *,int *,int *,unsigned long*,int *) ;
 scalar_t__ ucs2_strsize (int *,int) ;
 int up (int *) ;

int efivar_entry_set_get_size(struct efivar_entry *entry, u32 attributes,
         unsigned long *size, void *data, bool *set)
{
 const struct efivar_operations *ops;
 efi_char16_t *name = entry->var.VariableName;
 efi_guid_t *vendor = &entry->var.VendorGuid;
 efi_status_t status;
 int err;

 *set = 0;

 if (efivar_validate(*vendor, name, data, *size) == 0)
  return -EINVAL;






 if (down_interruptible(&efivars_lock))
  return -EINTR;

 if (!__efivars) {
  err = -EINVAL;
  goto out;
 }




 status = check_var_size(attributes, *size + ucs2_strsize(name, 1024));
 if (status != EFI_SUCCESS) {
  if (status != EFI_UNSUPPORTED) {
   err = efi_status_to_err(status);
   goto out;
  }

  if (*size > 65536) {
   err = -ENOSPC;
   goto out;
  }
 }

 ops = __efivars->ops;

 status = ops->set_variable(name, vendor, attributes, *size, data);
 if (status != EFI_SUCCESS) {
  err = efi_status_to_err(status);
  goto out;
 }

 *set = 1;







 *size = 0;
 status = ops->get_variable(entry->var.VariableName,
       &entry->var.VendorGuid,
       ((void*)0), size, ((void*)0));

 if (status == EFI_NOT_FOUND)
  efivar_entry_list_del_unlock(entry);
 else
  up(&efivars_lock);

 if (status && status != EFI_BUFFER_TOO_SMALL)
  return efi_status_to_err(status);

 return 0;

out:
 up(&efivars_lock);
 return err;

}
