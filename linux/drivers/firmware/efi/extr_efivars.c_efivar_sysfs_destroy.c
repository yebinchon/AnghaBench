
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int dummy; } ;


 int efivar_entry_remove (struct efivar_entry*) ;
 int efivar_unregister (struct efivar_entry*) ;

__attribute__((used)) static int efivar_sysfs_destroy(struct efivar_entry *entry, void *data)
{
 int err = efivar_entry_remove(entry);

 if (err)
  return err;
 efivar_unregister(entry);
 return 0;
}
