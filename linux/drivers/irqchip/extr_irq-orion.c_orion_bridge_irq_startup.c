
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int (* irq_unmask ) (struct irq_data*) ;int (* irq_ack ) (struct irq_data*) ;} ;
struct irq_chip_type {TYPE_1__ chip; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 int stub1 (struct irq_data*) ;
 int stub2 (struct irq_data*) ;

__attribute__((used)) static unsigned int orion_bridge_irq_startup(struct irq_data *d)
{
 struct irq_chip_type *ct = irq_data_get_chip_type(d);

 ct->chip.irq_ack(d);
 ct->chip.irq_unmask(d);
 return 0;
}
