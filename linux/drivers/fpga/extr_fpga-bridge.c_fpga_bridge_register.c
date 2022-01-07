
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; int of_node; } ;
struct fpga_bridge {int name; struct device dev; } ;


 int dev_info (int ,char*,int ) ;
 int device_add (struct device*) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;

int fpga_bridge_register(struct fpga_bridge *bridge)
{
 struct device *dev = &bridge->dev;
 int ret;

 ret = device_add(dev);
 if (ret)
  return ret;

 of_platform_populate(dev->of_node, ((void*)0), ((void*)0), dev);

 dev_info(dev->parent, "fpga bridge [%s] registered\n", bridge->name);

 return 0;
}
