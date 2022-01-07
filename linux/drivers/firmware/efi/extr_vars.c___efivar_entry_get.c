
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int VendorGuid; int VariableName; } ;
struct efivar_entry {TYPE_2__ var; } ;
typedef int efi_status_t ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* get_variable ) (int ,int *,int *,unsigned long*,void*) ;} ;


 int EINVAL ;
 TYPE_3__* __efivars ;
 int efi_status_to_err (int ) ;
 int stub1 (int ,int *,int *,unsigned long*,void*) ;

int __efivar_entry_get(struct efivar_entry *entry, u32 *attributes,
         unsigned long *size, void *data)
{
 efi_status_t status;

 if (!__efivars)
  return -EINVAL;

 status = __efivars->ops->get_variable(entry->var.VariableName,
           &entry->var.VendorGuid,
           attributes, size, data);

 return efi_status_to_err(status);
}
