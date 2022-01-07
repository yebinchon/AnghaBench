
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grgpio_priv {int domain; TYPE_1__* lirqs; } ;
struct gpio_chip {unsigned int ngpio; } ;
struct TYPE_2__ {scalar_t__ index; } ;


 int ENXIO ;
 struct grgpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int grgpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct grgpio_priv *priv = gpiochip_get_data(gc);

 if (offset >= gc->ngpio)
  return -ENXIO;

 if (priv->lirqs[offset].index < 0)
  return -ENXIO;

 return irq_create_mapping(priv->domain, offset);
}
