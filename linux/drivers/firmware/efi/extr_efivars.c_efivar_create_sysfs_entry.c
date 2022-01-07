
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kset; } ;
struct TYPE_4__ {int VendorGuid; int * VariableName; } ;
struct efivar_entry {TYPE_2__ kobj; TYPE_1__ var; } ;
typedef int efi_char16_t ;


 unsigned long EFI_VARIABLE_GUID_LEN ;
 int EINTR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int efi_guid_to_str (int *,char*) ;
 scalar_t__ efivar_entry_add (struct efivar_entry*,int *) ;
 int efivar_ktype ;
 int efivar_sysfs_list ;
 int efivar_unregister (struct efivar_entry*) ;
 int efivars_kset ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int kobject_init_and_add (TYPE_2__*,int *,int *,char*,char*) ;
 int kobject_uevent (TYPE_2__*,int ) ;
 int ucs2_as_utf8 (char*,int *,int) ;
 unsigned long ucs2_utf8size (int *) ;

__attribute__((used)) static int
efivar_create_sysfs_entry(struct efivar_entry *new_var)
{
 int short_name_size;
 char *short_name;
 unsigned long utf8_name_size;
 efi_char16_t *variable_name = new_var->var.VariableName;
 int ret;





 utf8_name_size = ucs2_utf8size(variable_name);
 short_name_size = utf8_name_size + 1 + EFI_VARIABLE_GUID_LEN + 1;

 short_name = kmalloc(short_name_size, GFP_KERNEL);
 if (!short_name)
  return -ENOMEM;

 ucs2_as_utf8(short_name, variable_name, short_name_size);



 short_name[utf8_name_size] = '-';
 efi_guid_to_str(&new_var->var.VendorGuid,
    short_name + utf8_name_size + 1);

 new_var->kobj.kset = efivars_kset;

 ret = kobject_init_and_add(&new_var->kobj, &efivar_ktype,
       ((void*)0), "%s", short_name);
 kfree(short_name);
 if (ret)
  return ret;

 kobject_uevent(&new_var->kobj, KOBJ_ADD);
 if (efivar_entry_add(new_var, &efivar_sysfs_list)) {
  efivar_unregister(new_var);
  return -EINTR;
 }

 return 0;
}
