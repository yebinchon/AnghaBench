
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dax_device_driver {int dummy; } ;


 int __dax_match_id (struct dax_device_driver*,int ) ;
 int dax_bus_lock ;
 int dev_name (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dax_match_id(struct dax_device_driver *dax_drv, struct device *dev)
{
 int match;

 mutex_lock(&dax_bus_lock);
 match = !!__dax_match_id(dax_drv, dev_name(dev));
 mutex_unlock(&dax_bus_lock);

 return match;
}
