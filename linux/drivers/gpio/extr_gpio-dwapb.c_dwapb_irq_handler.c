
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_chip {int (* irq_eoi ) (int ) ;} ;
struct dwapb_gpio {int dummy; } ;


 int dwapb_do_irq (struct dwapb_gpio*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct dwapb_gpio* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_desc_get_irq_data (struct irq_desc*) ;
 int stub1 (int ) ;

__attribute__((used)) static void dwapb_irq_handler(struct irq_desc *desc)
{
 struct dwapb_gpio *gpio = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);

 dwapb_do_irq(gpio);

 if (chip->irq_eoi)
  chip->irq_eoi(irq_desc_get_irq_data(desc));
}
