
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device {struct mcb_bus* bus; } ;
struct mcb_bus {int (* get_irq ) (struct mcb_device*) ;} ;


 int __mcb_get_irq (struct mcb_device*) ;
 int stub1 (struct mcb_device*) ;

int mcb_get_irq(struct mcb_device *dev)
{
 struct mcb_bus *bus = dev->bus;

 if (bus->get_irq)
  return bus->get_irq(dev);

 return __mcb_get_irq(dev);
}
