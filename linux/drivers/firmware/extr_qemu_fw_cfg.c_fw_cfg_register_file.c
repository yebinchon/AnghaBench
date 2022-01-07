
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cfg_sysfs_entry {int kobj; int name; int select; int size; } ;
struct fw_cfg_file {int name; int select; int size; } ;


 int ENOMEM ;
 int FW_CFG_MAX_FILE_PATH ;
 int FW_CFG_VMCOREINFO_FILENAME ;
 int GFP_KERNEL ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int fw_cfg_build_symlink (int ,int *,int ) ;
 scalar_t__ fw_cfg_dma_enabled () ;
 int fw_cfg_fname_kset ;
 int fw_cfg_sel_ko ;
 int fw_cfg_sysfs_attr_raw ;
 int fw_cfg_sysfs_cache_enlist (struct fw_cfg_sysfs_entry*) ;
 int fw_cfg_sysfs_entry_ktype ;
 scalar_t__ fw_cfg_write_vmcoreinfo (struct fw_cfg_file const*) ;
 int is_kdump_kernel () ;
 int kfree (struct fw_cfg_sysfs_entry*) ;
 int kobject_del (int *) ;
 int kobject_init_and_add (int *,int *,int ,char*,int ) ;
 struct fw_cfg_sysfs_entry* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int pr_warn (char*) ;
 scalar_t__ strcmp (int ,int ) ;
 int sysfs_create_bin_file (int *,int *) ;

__attribute__((used)) static int fw_cfg_register_file(const struct fw_cfg_file *f)
{
 int err;
 struct fw_cfg_sysfs_entry *entry;
 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;


 entry->size = be32_to_cpu(f->size);
 entry->select = be16_to_cpu(f->select);
 memcpy(entry->name, f->name, FW_CFG_MAX_FILE_PATH);


 err = kobject_init_and_add(&entry->kobj, &fw_cfg_sysfs_entry_ktype,
       fw_cfg_sel_ko, "%d", entry->select);
 if (err)
  goto err_register;


 err = sysfs_create_bin_file(&entry->kobj, &fw_cfg_sysfs_attr_raw);
 if (err)
  goto err_add_raw;


 fw_cfg_build_symlink(fw_cfg_fname_kset, &entry->kobj, entry->name);


 fw_cfg_sysfs_cache_enlist(entry);
 return 0;

err_add_raw:
 kobject_del(&entry->kobj);
err_register:
 kfree(entry);
 return err;
}
