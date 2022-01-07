
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {int * buf; } ;
typedef int ssize_t ;


 int EFIVARS_DATA_SIZE_MAX ;
 int EINTR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int efi_pstore_sysfs_entry_iter (struct pstore_record*) ;
 scalar_t__ efivar_entry_iter_begin () ;
 int efivar_entry_iter_end () ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;

__attribute__((used)) static ssize_t efi_pstore_read(struct pstore_record *record)
{
 ssize_t size;

 record->buf = kzalloc(EFIVARS_DATA_SIZE_MAX, GFP_KERNEL);
 if (!record->buf)
  return -ENOMEM;

 if (efivar_entry_iter_begin()) {
  size = -EINTR;
  goto out;
 }
 size = efi_pstore_sysfs_entry_iter(record);
 efivar_entry_iter_end();

out:
 if (size <= 0) {
  kfree(record->buf);
  record->buf = ((void*)0);
 }
 return size;
}
