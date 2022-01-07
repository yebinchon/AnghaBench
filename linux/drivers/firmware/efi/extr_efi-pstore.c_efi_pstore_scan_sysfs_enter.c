
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct efivar_entry {int scanning; struct list_head list; } ;



__attribute__((used)) static void efi_pstore_scan_sysfs_enter(struct efivar_entry *pos,
     struct efivar_entry *next,
     struct list_head *head)
{
 pos->scanning = 1;
 if (&next->list != head)
  next->scanning = 1;
}
