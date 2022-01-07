
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int scanning; } ;
typedef char efi_char16_t ;


 int DUMP_NAME_LEN ;
 int EINTR ;
 int ENOENT ;
 int __efivar_entry_iter (int ,int *,char*,struct efivar_entry**) ;
 int efi_pstore_erase_func ;
 scalar_t__ efivar_entry_iter_begin () ;
 int efivar_entry_iter_end () ;
 int efivar_sysfs_list ;
 int efivar_unregister (struct efivar_entry*) ;

__attribute__((used)) static int efi_pstore_erase_name(const char *name)
{
 struct efivar_entry *entry = ((void*)0);
 efi_char16_t efi_name[DUMP_NAME_LEN];
 int found, i;

 for (i = 0; i < DUMP_NAME_LEN; i++) {
  efi_name[i] = name[i];
  if (name[i] == '\0')
   break;
 }

 if (efivar_entry_iter_begin())
  return -EINTR;

 found = __efivar_entry_iter(efi_pstore_erase_func, &efivar_sysfs_list,
        efi_name, &entry);
 efivar_entry_iter_end();

 if (found && !entry->scanning)
  efivar_unregister(entry);

 return found ? 0 : -ENOENT;
}
