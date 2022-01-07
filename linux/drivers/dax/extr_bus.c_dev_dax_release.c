
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_dax {struct dax_device* dax_dev; struct dax_region* region; } ;
struct dax_region {int dummy; } ;
struct dax_device {int dummy; } ;


 int dax_region_put (struct dax_region*) ;
 int kfree (struct dev_dax*) ;
 int put_dax (struct dax_device*) ;
 struct dev_dax* to_dev_dax (struct device*) ;

__attribute__((used)) static void dev_dax_release(struct device *dev)
{
 struct dev_dax *dev_dax = to_dev_dax(dev);
 struct dax_region *dax_region = dev_dax->region;
 struct dax_device *dax_dev = dev_dax->dax_dev;

 dax_region_put(dax_region);
 put_dax(dax_dev);
 kfree(dev_dax);
}
