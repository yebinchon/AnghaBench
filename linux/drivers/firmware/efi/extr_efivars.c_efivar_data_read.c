
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int DataSize; int Data; int Attributes; } ;
struct efivar_entry {struct efi_variable var; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 scalar_t__ efivar_entry_get (struct efivar_entry*,int *,int*,int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static ssize_t
efivar_data_read(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;

 if (!entry || !buf)
  return -EINVAL;

 var->DataSize = 1024;
 if (efivar_entry_get(entry, &var->Attributes, &var->DataSize, var->Data))
  return -EIO;

 memcpy(buf, var->Data, var->DataSize);
 return var->DataSize;
}
