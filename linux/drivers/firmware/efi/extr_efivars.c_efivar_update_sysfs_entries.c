
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct efivar_entry {int dummy; } ;


 int GFP_KERNEL ;
 int efivar_create_sysfs_entry (struct efivar_entry*) ;
 int efivar_init (int ,struct efivar_entry*,int,int *) ;
 int efivar_sysfs_list ;
 int efivar_update_sysfs_entry ;
 int kfree (struct efivar_entry*) ;
 struct efivar_entry* kzalloc (int,int ) ;

__attribute__((used)) static void efivar_update_sysfs_entries(struct work_struct *work)
{
 struct efivar_entry *entry;
 int err;


 while (1) {
  entry = kzalloc(sizeof(*entry), GFP_KERNEL);
  if (!entry)
   return;

  err = efivar_init(efivar_update_sysfs_entry, entry,
      0, &efivar_sysfs_list);
  if (!err)
   break;

  efivar_create_sysfs_entry(entry);
 }

 kfree(entry);
}
