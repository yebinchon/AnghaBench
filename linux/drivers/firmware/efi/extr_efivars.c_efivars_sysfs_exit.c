
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;


 int __efivar_entry_iter (int ,int *,int *,int *) ;
 int efivar_sysfs_destroy ;
 int efivar_sysfs_list ;
 scalar_t__ efivars_del_var ;
 TYPE_1__* efivars_kset ;
 scalar_t__ efivars_new_var ;
 int kfree (scalar_t__) ;
 int kset_unregister (TYPE_1__*) ;
 int pr_err (char*) ;
 int sysfs_remove_bin_file (int *,scalar_t__) ;

__attribute__((used)) static void efivars_sysfs_exit(void)
{

 int err;

 err = __efivar_entry_iter(efivar_sysfs_destroy, &efivar_sysfs_list,
      ((void*)0), ((void*)0));
 if (err) {
  pr_err("efivars: Failed to destroy sysfs entries\n");
  return;
 }

 if (efivars_new_var)
  sysfs_remove_bin_file(&efivars_kset->kobj, efivars_new_var);
 if (efivars_del_var)
  sysfs_remove_bin_file(&efivars_kset->kobj, efivars_del_var);
 kfree(efivars_new_var);
 kfree(efivars_del_var);
 kset_unregister(efivars_kset);
}
