
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct efivar_entry {struct list_head list; } ;


 int __efi_pstore_scan_sysfs_exit (struct efivar_entry*,int) ;

__attribute__((used)) static int efi_pstore_scan_sysfs_exit(struct efivar_entry *pos,
           struct efivar_entry *next,
           struct list_head *head, bool stop)
{
 int ret = __efi_pstore_scan_sysfs_exit(pos, 1);

 if (ret)
  return ret;

 if (stop)
  ret = __efi_pstore_scan_sysfs_exit(next, &next->list != head);
 return ret;
}
