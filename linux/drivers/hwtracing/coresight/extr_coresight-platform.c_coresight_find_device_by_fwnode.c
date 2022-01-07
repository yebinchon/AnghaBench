
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int amba_bustype ;
 struct device* bus_find_device_by_fwnode (int *,struct fwnode_handle*) ;
 int platform_bus_type ;

__attribute__((used)) static struct device *
coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
{
 struct device *dev = ((void*)0);





 dev = bus_find_device_by_fwnode(&platform_bus_type, fwnode);
 if (dev)
  return dev;





 return bus_find_device_by_fwnode(&amba_bustype, fwnode);
}
