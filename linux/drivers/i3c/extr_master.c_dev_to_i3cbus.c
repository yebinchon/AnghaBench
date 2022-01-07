
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_bus {int dummy; } ;
struct i3c_master_controller {struct i3c_bus bus; } ;
struct device {int * type; } ;
struct TYPE_2__ {struct i3c_bus* bus; } ;


 TYPE_1__* dev_to_i3cdev (struct device*) ;
 struct i3c_master_controller* dev_to_i3cmaster (struct device*) ;
 int i3c_device_type ;

__attribute__((used)) static struct i3c_bus *dev_to_i3cbus(struct device *dev)
{
 struct i3c_master_controller *master;

 if (dev->type == &i3c_device_type)
  return dev_to_i3cdev(dev)->bus;

 master = dev_to_i3cmaster(dev);

 return &master->bus;
}
