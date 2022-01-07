
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int dummy; } ;


 int mcb_devices_unregister (struct mcb_bus*) ;

void mcb_release_bus(struct mcb_bus *bus)
{
 mcb_devices_unregister(bus);
}
