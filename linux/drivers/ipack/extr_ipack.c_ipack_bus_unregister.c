
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_bus_device {int bus_nr; } ;


 int bus_for_each_dev (int *,int *,struct ipack_bus_device*,int ) ;
 int ida_simple_remove (int *,int ) ;
 int ipack_bus_type ;
 int ipack_ida ;
 int ipack_unregister_bus_member ;
 int kfree (struct ipack_bus_device*) ;

int ipack_bus_unregister(struct ipack_bus_device *bus)
{
 bus_for_each_dev(&ipack_bus_type, ((void*)0), bus,
  ipack_unregister_bus_member);
 ida_simple_remove(&ipack_ida, bus->bus_nr);
 kfree(bus);
 return 0;
}
