
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int VendorGuid; int VariableName; } ;
struct efivar_entry {TYPE_2__ var; } ;
typedef int efi_status_t ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_variable ) (int ,int *,int ,int ,int *) ;} ;


 int EINVAL ;
 TYPE_3__* __efivars ;
 int efi_status_to_err (int ) ;
 int stub1 (int ,int *,int ,int ,int *) ;

int __efivar_entry_delete(struct efivar_entry *entry)
{
 efi_status_t status;

 if (!__efivars)
  return -EINVAL;

 status = __efivars->ops->set_variable(entry->var.VariableName,
           &entry->var.VendorGuid,
           0, 0, ((void*)0));

 return efi_status_to_err(status);
}
