
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_drv {int mdev; int kms; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_drvdata (struct device*,struct komeda_drv*) ;
 int devm_kfree (struct device*,struct komeda_drv*) ;
 struct komeda_drv* devm_kzalloc (struct device*,int,int ) ;
 int komeda_dev_create (struct device*) ;
 int komeda_dev_destroy (int ) ;
 int komeda_kms_attach (int ) ;

__attribute__((used)) static int komeda_bind(struct device *dev)
{
 struct komeda_drv *mdrv;
 int err;

 mdrv = devm_kzalloc(dev, sizeof(*mdrv), GFP_KERNEL);
 if (!mdrv)
  return -ENOMEM;

 mdrv->mdev = komeda_dev_create(dev);
 if (IS_ERR(mdrv->mdev)) {
  err = PTR_ERR(mdrv->mdev);
  goto free_mdrv;
 }

 mdrv->kms = komeda_kms_attach(mdrv->mdev);
 if (IS_ERR(mdrv->kms)) {
  err = PTR_ERR(mdrv->kms);
  goto destroy_mdev;
 }

 dev_set_drvdata(dev, mdrv);

 return 0;

destroy_mdev:
 komeda_dev_destroy(mdrv->mdev);

free_mdrv:
 devm_kfree(dev, mdrv);
 return err;
}
