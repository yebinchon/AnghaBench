
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct its_device {int dummy; } ;
struct irq_data {int dummy; } ;
typedef enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;


 int EINVAL ;
 int IRQCHIP_STATE_PENDING ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int its_get_event_id (struct irq_data*) ;
 int its_send_clear (struct its_device*,int ) ;
 int its_send_int (struct its_device*,int ) ;

__attribute__((used)) static int its_irq_set_irqchip_state(struct irq_data *d,
         enum irqchip_irq_state which,
         bool state)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);

 if (which != IRQCHIP_STATE_PENDING)
  return -EINVAL;

 if (state)
  its_send_int(its_dev, event);
 else
  its_send_clear(its_dev, event);

 return 0;
}
