
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int scanning; int list; scalar_t__ deleting; } ;


 int EINTR ;
 scalar_t__ efivar_entry_iter_begin () ;
 int efivar_entry_iter_end () ;
 int efivar_unregister (struct efivar_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static inline int __efi_pstore_scan_sysfs_exit(struct efivar_entry *entry,
      bool turn_off_scanning)
{
 if (entry->deleting) {
  list_del(&entry->list);
  efivar_entry_iter_end();
  efivar_unregister(entry);
  if (efivar_entry_iter_begin())
   return -EINTR;
 } else if (turn_off_scanning)
  entry->scanning = 0;

 return 0;
}
