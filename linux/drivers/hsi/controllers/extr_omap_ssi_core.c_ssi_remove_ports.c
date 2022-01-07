
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int of_node; } ;


 int OF_POPULATED ;
 int of_device_unregister (struct platform_device*) ;
 int of_node_clear_flag (int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int ssi_remove_ports(struct device *dev, void *c)
{
 struct platform_device *pdev = to_platform_device(dev);

 if (!dev->of_node)
  return 0;

 of_node_clear_flag(dev->of_node, OF_POPULATED);
 of_device_unregister(pdev);

 return 0;
}
