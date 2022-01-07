
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int dev; } ;


 int get_device (int *) ;

struct mcb_bus *mcb_bus_get(struct mcb_bus *bus)
{
 if (bus)
  get_device(&bus->dev);

 return bus;
}
