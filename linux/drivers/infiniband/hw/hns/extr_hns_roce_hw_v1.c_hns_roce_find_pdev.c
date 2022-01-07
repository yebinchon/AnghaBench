
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_fwnode (int *,struct fwnode_handle*) ;
 int platform_bus_type ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static struct
platform_device *hns_roce_find_pdev(struct fwnode_handle *fwnode)
{
 struct device *dev;


 dev = bus_find_device_by_fwnode(&platform_bus_type, fwnode);

 return dev ? to_platform_device(dev) : ((void*)0);
}
