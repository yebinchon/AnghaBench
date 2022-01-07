
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int dev_info (struct device*,char*) ;
 int init_cc_resources (struct platform_device*) ;

__attribute__((used)) static int ccree_probe(struct platform_device *plat_dev)
{
 int rc;
 struct device *dev = &plat_dev->dev;


 rc = init_cc_resources(plat_dev);
 if (rc)
  return rc;

 dev_info(dev, "ARM ccree device initialized\n");

 return 0;
}
