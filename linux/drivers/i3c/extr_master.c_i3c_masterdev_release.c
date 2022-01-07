
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {scalar_t__ wq; } ;
struct TYPE_2__ {int i3c; int i2c; } ;
struct i3c_bus {TYPE_1__ devs; } ;
struct device {int of_node; } ;


 int WARN_ON (int) ;
 int destroy_workqueue (scalar_t__) ;
 struct i3c_bus* dev_to_i3cbus (struct device*) ;
 struct i3c_master_controller* dev_to_i3cmaster (struct device*) ;
 int i3c_bus_cleanup (struct i3c_bus*) ;
 int list_empty (int *) ;
 int of_node_put (int ) ;

__attribute__((used)) static void i3c_masterdev_release(struct device *dev)
{
 struct i3c_master_controller *master = dev_to_i3cmaster(dev);
 struct i3c_bus *bus = dev_to_i3cbus(dev);

 if (master->wq)
  destroy_workqueue(master->wq);

 WARN_ON(!list_empty(&bus->devs.i2c) || !list_empty(&bus->devs.i3c));
 i3c_bus_cleanup(bus);

 of_node_put(dev->of_node);
}
