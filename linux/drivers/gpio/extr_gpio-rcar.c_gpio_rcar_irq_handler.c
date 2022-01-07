
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct gpio_rcar_priv {TYPE_2__ gpio_chip; } ;
typedef int irqreturn_t ;


 int BIT (unsigned int) ;
 int INTCLR ;
 int INTDT ;
 int INTMSK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int __ffs (int) ;
 int generic_handle_irq (int ) ;
 int gpio_rcar_read (struct gpio_rcar_priv*,int ) ;
 int gpio_rcar_write (struct gpio_rcar_priv*,int ,int ) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static irqreturn_t gpio_rcar_irq_handler(int irq, void *dev_id)
{
 struct gpio_rcar_priv *p = dev_id;
 u32 pending;
 unsigned int offset, irqs_handled = 0;

 while ((pending = gpio_rcar_read(p, INTDT) &
     gpio_rcar_read(p, INTMSK))) {
  offset = __ffs(pending);
  gpio_rcar_write(p, INTCLR, BIT(offset));
  generic_handle_irq(irq_find_mapping(p->gpio_chip.irq.domain,
          offset));
  irqs_handled++;
 }

 return irqs_handled ? IRQ_HANDLED : IRQ_NONE;
}
