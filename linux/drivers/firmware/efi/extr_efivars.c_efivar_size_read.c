
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
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
efivar_size_read(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;
 char *str = buf;

 if (!entry || !buf)
  return -EINVAL;

 var->DataSize = 1024;
 if (efivar_entry_get(entry, &var->Attributes, &var->DataSize, var->Data))
  return -EIO;

 str += sprintf(str, "0x%lx\n", var->DataSize);
 return str - buf;
}
