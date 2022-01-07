
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct ipack_bus_ops {int dummy; } ;
struct ipack_bus_device {int bus_nr; int slots; struct module* owner; struct ipack_bus_ops const* ops; struct device* parent; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ipack_ida ;
 int kfree (struct ipack_bus_device*) ;
 struct ipack_bus_device* kzalloc (int,int ) ;

struct ipack_bus_device *ipack_bus_register(struct device *parent, int slots,
         const struct ipack_bus_ops *ops,
         struct module *owner)
{
 int bus_nr;
 struct ipack_bus_device *bus;

 bus = kzalloc(sizeof(*bus), GFP_KERNEL);
 if (!bus)
  return ((void*)0);

 bus_nr = ida_simple_get(&ipack_ida, 0, 0, GFP_KERNEL);
 if (bus_nr < 0) {
  kfree(bus);
  return ((void*)0);
 }

 bus->bus_nr = bus_nr;
 bus->parent = parent;
 bus->slots = slots;
 bus->ops = ops;
 bus->owner = owner;
 return bus;
}
