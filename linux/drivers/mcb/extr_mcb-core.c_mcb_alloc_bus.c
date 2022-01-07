
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * release; int * type; int * bus; struct device* parent; } ;
struct mcb_bus {int bus_nr; TYPE_1__ dev; int carrier; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct mcb_bus* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct mcb_bus*) ;
 struct mcb_bus* kzalloc (int,int ) ;
 int mcb_bus_type ;
 int mcb_carrier_device_type ;
 int mcb_free_bus ;
 int mcb_ida ;
 int put_device (struct device*) ;

struct mcb_bus *mcb_alloc_bus(struct device *carrier)
{
 struct mcb_bus *bus;
 int bus_nr;
 int rc;

 bus = kzalloc(sizeof(struct mcb_bus), GFP_KERNEL);
 if (!bus)
  return ERR_PTR(-ENOMEM);

 bus_nr = ida_simple_get(&mcb_ida, 0, 0, GFP_KERNEL);
 if (bus_nr < 0) {
  rc = bus_nr;
  goto err_free;
 }

 bus->bus_nr = bus_nr;
 bus->carrier = get_device(carrier);

 device_initialize(&bus->dev);
 bus->dev.parent = carrier;
 bus->dev.bus = &mcb_bus_type;
 bus->dev.type = &mcb_carrier_device_type;
 bus->dev.release = &mcb_free_bus;

 dev_set_name(&bus->dev, "mcb:%d", bus_nr);
 rc = device_add(&bus->dev);
 if (rc)
  goto err_free;

 return bus;
err_free:
 put_device(carrier);
 kfree(bus);
 return ERR_PTR(rc);
}
