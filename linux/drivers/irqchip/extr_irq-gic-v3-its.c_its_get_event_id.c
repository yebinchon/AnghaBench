
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ lpi_base; } ;
struct its_device {TYPE_1__ event_map; } ;
struct irq_data {scalar_t__ hwirq; } ;


 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static inline u32 its_get_event_id(struct irq_data *d)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 return d->hwirq - its_dev->event_map.lpi_base;
}
