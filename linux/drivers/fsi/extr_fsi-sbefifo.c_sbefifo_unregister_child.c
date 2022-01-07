
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int OF_POPULATED ;
 int of_device_unregister (struct platform_device*) ;
 int of_node_clear_flag (scalar_t__,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sbefifo_unregister_child(struct device *dev, void *data)
{
 struct platform_device *child = to_platform_device(dev);

 of_device_unregister(child);
 if (dev->of_node)
  of_node_clear_flag(dev->of_node, OF_POPULATED);

 return 0;
}
