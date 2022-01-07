
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
typedef int rev ;
typedef int __le32 ;
struct TYPE_2__ {int attr; } ;


 int EBUSY ;
 int ENOMEM ;
 int FW_CFG_ID ;
 int fw_cfg_do_platform_probe (struct platform_device*) ;
 int fw_cfg_fname_kset ;
 int fw_cfg_io_cleanup () ;
 int fw_cfg_kobj_cleanup (scalar_t__) ;
 int fw_cfg_kset_unregister_recursive (int ) ;
 int fw_cfg_read_blob (int ,int *,int ,int) ;
 int fw_cfg_register_dir_entries () ;
 int fw_cfg_rev ;
 TYPE_1__ fw_cfg_rev_attr ;
 scalar_t__ fw_cfg_sel_ko ;
 int fw_cfg_sysfs_cache_cleanup () ;
 int fw_cfg_top_ko ;
 scalar_t__ kobject_create_and_add (char*,int ) ;
 int kset_create_and_add (char*,int *,int ) ;
 int le32_to_cpu (int ) ;
 int pr_debug (char*) ;
 int sysfs_create_file (int ,int *) ;
 int sysfs_remove_file (int ,int *) ;

__attribute__((used)) static int fw_cfg_sysfs_probe(struct platform_device *pdev)
{
 int err;
 __le32 rev;







 if (fw_cfg_sel_ko)
  return -EBUSY;


 err = -ENOMEM;
 fw_cfg_sel_ko = kobject_create_and_add("by_key", fw_cfg_top_ko);
 if (!fw_cfg_sel_ko)
  goto err_sel;
 fw_cfg_fname_kset = kset_create_and_add("by_name", ((void*)0), fw_cfg_top_ko);
 if (!fw_cfg_fname_kset)
  goto err_name;


 err = fw_cfg_do_platform_probe(pdev);
 if (err)
  goto err_probe;


 err = fw_cfg_read_blob(FW_CFG_ID, &rev, 0, sizeof(rev));
 if (err < 0)
  goto err_probe;

 fw_cfg_rev = le32_to_cpu(rev);
 err = sysfs_create_file(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
 if (err)
  goto err_rev;


 err = fw_cfg_register_dir_entries();
 if (err)
  goto err_dir;


 pr_debug("fw_cfg: loaded.\n");
 return 0;

err_dir:
 fw_cfg_sysfs_cache_cleanup();
 sysfs_remove_file(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
err_rev:
 fw_cfg_io_cleanup();
err_probe:
 fw_cfg_kset_unregister_recursive(fw_cfg_fname_kset);
err_name:
 fw_cfg_kobj_cleanup(fw_cfg_sel_ko);
err_sel:
 return err;
}
