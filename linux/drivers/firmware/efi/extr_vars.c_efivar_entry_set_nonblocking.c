
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efivar_operations {scalar_t__ (* set_variable_nonblocking ) (int *,int *,int ,unsigned long,void*) ;} ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {struct efivar_operations* ops; } ;


 int EBUSY ;
 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int ENOSPC ;
 TYPE_1__* __efivars ;
 scalar_t__ check_var_size_nonblocking (int ,scalar_t__) ;
 scalar_t__ down_trylock (int *) ;
 int efi_status_to_err (scalar_t__) ;
 int efivars_lock ;
 scalar_t__ stub1 (int *,int *,int ,unsigned long,void*) ;
 scalar_t__ ucs2_strsize (int *,int) ;
 int up (int *) ;

__attribute__((used)) static int
efivar_entry_set_nonblocking(efi_char16_t *name, efi_guid_t vendor,
        u32 attributes, unsigned long size, void *data)
{
 const struct efivar_operations *ops;
 efi_status_t status;

 if (down_trylock(&efivars_lock))
  return -EBUSY;

 if (!__efivars) {
  up(&efivars_lock);
  return -EINVAL;
 }

 status = check_var_size_nonblocking(attributes,
         size + ucs2_strsize(name, 1024));
 if (status != EFI_SUCCESS) {
  up(&efivars_lock);
  return -ENOSPC;
 }

 ops = __efivars->ops;
 status = ops->set_variable_nonblocking(name, &vendor, attributes,
            size, data);

 up(&efivars_lock);
 return efi_status_to_err(status);
}
