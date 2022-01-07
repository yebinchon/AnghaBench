
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct mcb_device {int dummy; } ;


 int IORESOURCE_IRQ ;
 struct resource* mcb_get_resource (struct mcb_device*,int ) ;

__attribute__((used)) static int __mcb_get_irq(struct mcb_device *dev)
{
 struct resource *irq;

 irq = mcb_get_resource(dev, IORESOURCE_IRQ);

 return irq->start;
}
