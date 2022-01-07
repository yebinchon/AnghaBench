
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int attr; } ;


 int fw_cfg_fname_kset ;
 int fw_cfg_io_cleanup () ;
 int fw_cfg_kobj_cleanup (int ) ;
 int fw_cfg_kset_unregister_recursive (int ) ;
 TYPE_1__ fw_cfg_rev_attr ;
 int fw_cfg_sel_ko ;
 int fw_cfg_sysfs_cache_cleanup () ;
 int fw_cfg_top_ko ;
 int pr_debug (char*) ;
 int sysfs_remove_file (int ,int *) ;

__attribute__((used)) static int fw_cfg_sysfs_remove(struct platform_device *pdev)
{
 pr_debug("fw_cfg: unloading.\n");
 fw_cfg_sysfs_cache_cleanup();
 sysfs_remove_file(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
 fw_cfg_io_cleanup();
 fw_cfg_kset_unregister_recursive(fw_cfg_fname_kset);
 fw_cfg_kobj_cleanup(fw_cfg_sel_ko);
 return 0;
}
