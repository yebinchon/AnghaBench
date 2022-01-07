
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int dev; } ;


 int put_device (int *) ;

void mcb_bus_put(struct mcb_bus *bus)
{
 if (bus)
  put_device(&bus->dev);
}
