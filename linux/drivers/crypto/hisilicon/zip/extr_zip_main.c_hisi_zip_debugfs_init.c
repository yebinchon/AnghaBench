
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct dentry* debug_root; } ;
struct hisi_qm {scalar_t__ fun_type; TYPE_1__ debug; TYPE_2__* pdev; } ;
struct hisi_zip {TYPE_3__* ctrl; struct hisi_qm qm; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {struct dentry* debug_root; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENOENT ;
 scalar_t__ QM_HW_PF ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_remove_recursive (int ) ;
 int dev_name (struct device*) ;
 int hisi_qm_debug_init (struct hisi_qm*) ;
 int hisi_zip_ctrl_debug_init (TYPE_3__*) ;
 int hzip_debugfs_root ;

__attribute__((used)) static int hisi_zip_debugfs_init(struct hisi_zip *hisi_zip)
{
 struct hisi_qm *qm = &hisi_zip->qm;
 struct device *dev = &qm->pdev->dev;
 struct dentry *dev_d;
 int ret;

 dev_d = debugfs_create_dir(dev_name(dev), hzip_debugfs_root);
 if (!dev_d)
  return -ENOENT;

 qm->debug.debug_root = dev_d;
 ret = hisi_qm_debug_init(qm);
 if (ret)
  goto failed_to_create;

 if (qm->fun_type == QM_HW_PF) {
  hisi_zip->ctrl->debug_root = dev_d;
  ret = hisi_zip_ctrl_debug_init(hisi_zip->ctrl);
  if (ret)
   goto failed_to_create;
 }

 return 0;

failed_to_create:
 debugfs_remove_recursive(hzip_debugfs_root);
 return ret;
}
