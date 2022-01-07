
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mcb_device {struct resource irq; struct resource mem; } ;


 unsigned int IORESOURCE_IRQ ;
 unsigned int IORESOURCE_MEM ;

struct resource *mcb_get_resource(struct mcb_device *dev, unsigned int type)
{
 if (type == IORESOURCE_MEM)
  return &dev->mem;
 else if (type == IORESOURCE_IRQ)
  return &dev->irq;
 else
  return ((void*)0);
}
