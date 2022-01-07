
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int cleanup_cc_resources (struct platform_device*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_info (struct device*,char*) ;

__attribute__((used)) static int ccree_remove(struct platform_device *plat_dev)
{
 struct device *dev = &plat_dev->dev;

 dev_dbg(dev, "Releasing ccree resources...\n");

 cleanup_cc_resources(plat_dev);

 dev_info(dev, "ARM ccree device terminated\n");

 return 0;
}
