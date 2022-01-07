
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int devres_release_group (struct device*,int ) ;
 int to_dev_dax (struct device*) ;

__attribute__((used)) static int dax_pmem_compat_release(struct device *dev, void *data)
{
 device_lock(dev);
 devres_release_group(dev, to_dev_dax(dev));
 device_unlock(dev);

 return 0;
}
