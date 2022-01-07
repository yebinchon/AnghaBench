
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int release; int parent; int * bus; } ;
struct mcb_device {int id; TYPE_2__ dev; int var; int group; int inst; int dma_dev; } ;
struct TYPE_5__ {int parent; } ;
struct mcb_bus {int bus_nr; int carrier; TYPE_1__ dev; } ;


 int dev_set_name (TYPE_2__*,char*,int ,int,int ,int ,int ) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int mcb_bus_get (struct mcb_bus*) ;
 int mcb_bus_type ;
 int mcb_release_dev ;
 int pr_err (char*,int,int ,int) ;

int mcb_device_register(struct mcb_bus *bus, struct mcb_device *dev)
{
 int ret;
 int device_id;

 device_initialize(&dev->dev);
 mcb_bus_get(bus);
 dev->dev.bus = &mcb_bus_type;
 dev->dev.parent = bus->dev.parent;
 dev->dev.release = mcb_release_dev;
 dev->dma_dev = bus->carrier;

 device_id = dev->id;
 dev_set_name(&dev->dev, "mcb%d-16z%03d-%d:%d:%d",
  bus->bus_nr, device_id, dev->inst, dev->group, dev->var);

 ret = device_add(&dev->dev);
 if (ret < 0) {
  pr_err("Failed registering device 16z%03d on bus mcb%d (%d)\n",
   device_id, bus->bus_nr, ret);
  goto out;
 }

 return 0;

out:

 return ret;
}
