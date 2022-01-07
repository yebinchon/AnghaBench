
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 scalar_t__ IRQF_TRIGGER_HIGH ;
 int VINT_STATUS_OFFSET ;
 scalar_t__ irqd_get_trigger_type (struct irq_data*) ;
 int ti_sci_inta_manage_event (struct irq_data*,int ) ;

__attribute__((used)) static void ti_sci_inta_ack_irq(struct irq_data *data)
{




 if (irqd_get_trigger_type(data) != IRQF_TRIGGER_HIGH)
  ti_sci_inta_manage_event(data, VINT_STATUS_OFFSET);
}
