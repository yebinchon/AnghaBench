
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct efivar_operations {int (* query_variable_store ) (int ,unsigned long,int) ;} ;
typedef int efi_status_t ;
struct TYPE_2__ {struct efivar_operations* ops; } ;


 int EFI_UNSUPPORTED ;
 TYPE_1__* __efivars ;
 int stub1 (int ,unsigned long,int) ;

__attribute__((used)) static efi_status_t
check_var_size_nonblocking(u32 attributes, unsigned long size)
{
 const struct efivar_operations *fops;

 if (!__efivars)
  return EFI_UNSUPPORTED;

 fops = __efivars->ops;

 if (!fops->query_variable_store)
  return EFI_UNSUPPORTED;

 return fops->query_variable_store(attributes, size, 1);
}
