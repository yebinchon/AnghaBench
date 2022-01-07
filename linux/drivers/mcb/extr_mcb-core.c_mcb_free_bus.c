
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_bus {int bus_nr; int carrier; } ;
struct device {int dummy; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct mcb_bus*) ;
 int mcb_ida ;
 int put_device (int ) ;
 struct mcb_bus* to_mcb_bus (struct device*) ;

__attribute__((used)) static void mcb_free_bus(struct device *dev)
{
 struct mcb_bus *bus = to_mcb_bus(dev);

 put_device(bus->carrier);
 ida_simple_remove(&mcb_ida, bus->bus_nr);
 kfree(bus);
}
