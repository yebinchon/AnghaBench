
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_dev_funcs {int (* cleanup ) (struct komeda_dev*) ;int (* disconnect_iommu ) (struct komeda_dev*) ;} ;
struct komeda_dev {int n_pipelines; int * aclk; int * reg_base; int ** pipelines; int * iommu; struct komeda_dev_funcs* funcs; int debugfs_root; struct device* dev; } ;
struct device {int kobj; } ;


 int clk_disable_unprepare (int *) ;
 int debugfs_remove_recursive (int ) ;
 int devm_clk_put (struct device*,int *) ;
 int devm_iounmap (struct device*,int *) ;
 int devm_kfree (struct device*,struct komeda_dev*) ;
 int komeda_pipeline_destroy (struct komeda_dev*,int *) ;
 int komeda_sysfs_attr_group ;
 int of_reserved_mem_device_release (struct device*) ;
 int stub1 (struct komeda_dev*) ;
 int stub2 (struct komeda_dev*) ;
 int sysfs_remove_group (int *,int *) ;

void komeda_dev_destroy(struct komeda_dev *mdev)
{
 struct device *dev = mdev->dev;
 const struct komeda_dev_funcs *funcs = mdev->funcs;
 int i;

 sysfs_remove_group(&dev->kobj, &komeda_sysfs_attr_group);





 if (mdev->iommu && mdev->funcs->disconnect_iommu)
  mdev->funcs->disconnect_iommu(mdev);
 mdev->iommu = ((void*)0);

 for (i = 0; i < mdev->n_pipelines; i++) {
  komeda_pipeline_destroy(mdev, mdev->pipelines[i]);
  mdev->pipelines[i] = ((void*)0);
 }

 mdev->n_pipelines = 0;

 of_reserved_mem_device_release(dev);

 if (funcs && funcs->cleanup)
  funcs->cleanup(mdev);

 if (mdev->reg_base) {
  devm_iounmap(dev, mdev->reg_base);
  mdev->reg_base = ((void*)0);
 }

 if (mdev->aclk) {
  clk_disable_unprepare(mdev->aclk);
  devm_clk_put(dev, mdev->aclk);
  mdev->aclk = ((void*)0);
 }

 devm_kfree(dev, mdev);
}
