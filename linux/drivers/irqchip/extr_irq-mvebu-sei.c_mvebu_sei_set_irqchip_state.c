
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
typedef enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;


 int EINVAL ;
 int IRQCHIP_STATE_PENDING ;
 int mvebu_sei_ack_irq (struct irq_data*) ;

__attribute__((used)) static int mvebu_sei_set_irqchip_state(struct irq_data *d,
           enum irqchip_irq_state which,
           bool state)
{

 if (which != IRQCHIP_STATE_PENDING || state)
  return -EINVAL;

 mvebu_sei_ack_irq(d);
 return 0;
}
