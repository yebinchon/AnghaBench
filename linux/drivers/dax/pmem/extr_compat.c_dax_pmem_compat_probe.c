
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_dax {int dev; } ;


 int DEV_DAX_CLASS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dev_dax*) ;
 int PTR_ERR (struct dev_dax*) ;
 struct dev_dax* __dax_pmem_probe (struct device*,int ) ;
 int dev_dax_probe (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int devres_close_group (int *,struct dev_dax*) ;
 int devres_open_group (int *,struct dev_dax*,int ) ;
 int devres_release_group (int *,struct dev_dax*) ;

__attribute__((used)) static int dax_pmem_compat_probe(struct device *dev)
{
 struct dev_dax *dev_dax = __dax_pmem_probe(dev, DEV_DAX_CLASS);
 int rc;

 if (IS_ERR(dev_dax))
  return PTR_ERR(dev_dax);

        if (!devres_open_group(&dev_dax->dev, dev_dax, GFP_KERNEL))
  return -ENOMEM;

 device_lock(&dev_dax->dev);
 rc = dev_dax_probe(&dev_dax->dev);
 device_unlock(&dev_dax->dev);

 devres_close_group(&dev_dax->dev, dev_dax);
 if (rc)
  devres_release_group(&dev_dax->dev, dev_dax);

 return rc;
}
