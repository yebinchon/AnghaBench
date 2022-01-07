
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_prv_data {int inject_fops; } ;
struct edac_device_ctl_info {struct altr_edac_device_dev* pvt_info; } ;
struct altr_edac_device_dev {int debugfs_dir; int edac_dev_name; } ;


 int CONFIG_EDAC_DEBUG ;
 int IS_ENABLED (int ) ;
 int S_IWUSR ;
 int debugfs_remove_recursive (int ) ;
 int edac_debugfs_create_dir (int ) ;
 int edac_debugfs_create_file (char*,int ,int ,struct edac_device_ctl_info*,int ) ;

__attribute__((used)) static void altr_create_edacdev_dbgfs(struct edac_device_ctl_info *edac_dci,
          const struct edac_device_prv_data *priv)
{
 struct altr_edac_device_dev *drvdata = edac_dci->pvt_info;

 if (!IS_ENABLED(CONFIG_EDAC_DEBUG))
  return;

 drvdata->debugfs_dir = edac_debugfs_create_dir(drvdata->edac_dev_name);
 if (!drvdata->debugfs_dir)
  return;

 if (!edac_debugfs_create_file("altr_trigger", S_IWUSR,
          drvdata->debugfs_dir, edac_dci,
          priv->inject_fops))
  debugfs_remove_recursive(drvdata->debugfs_dir);
}
