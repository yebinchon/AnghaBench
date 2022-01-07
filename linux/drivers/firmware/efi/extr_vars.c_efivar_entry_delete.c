
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efivar_operations {scalar_t__ (* set_variable ) (int ,int *,int ,int ,int *) ;} ;
struct TYPE_3__ {int VendorGuid; int VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef scalar_t__ efi_status_t ;
struct TYPE_4__ {struct efivar_operations* ops; } ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int EINTR ;
 int EINVAL ;
 TYPE_2__* __efivars ;
 scalar_t__ down_interruptible (int *) ;
 int efi_status_to_err (scalar_t__) ;
 int efivar_entry_list_del_unlock (struct efivar_entry*) ;
 int efivars_lock ;
 scalar_t__ stub1 (int ,int *,int ,int ,int *) ;
 int up (int *) ;

int efivar_entry_delete(struct efivar_entry *entry)
{
 const struct efivar_operations *ops;
 efi_status_t status;

 if (down_interruptible(&efivars_lock))
  return -EINTR;

 if (!__efivars) {
  up(&efivars_lock);
  return -EINVAL;
 }
 ops = __efivars->ops;
 status = ops->set_variable(entry->var.VariableName,
       &entry->var.VendorGuid,
       0, 0, ((void*)0));
 if (!(status == EFI_SUCCESS || status == EFI_NOT_FOUND)) {
  up(&efivars_lock);
  return efi_status_to_err(status);
 }

 efivar_entry_list_del_unlock(entry);
 return 0;
}
