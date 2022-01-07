
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_drv {int mdev; int kms; } ;
struct device {int dummy; } ;


 struct komeda_drv* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int devm_kfree (struct device*,struct komeda_drv*) ;
 int komeda_dev_destroy (int ) ;
 int komeda_kms_detach (int ) ;

__attribute__((used)) static void komeda_unbind(struct device *dev)
{
 struct komeda_drv *mdrv = dev_get_drvdata(dev);

 if (!mdrv)
  return;

 komeda_kms_detach(mdrv->kms);
 komeda_dev_destroy(mdrv->mdev);

 dev_set_drvdata(dev, ((void*)0));
 devm_kfree(dev, mdrv);
}
