
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int VINT_ENABLE_CLR_OFFSET ;
 int ti_sci_inta_manage_event (struct irq_data*,int ) ;

__attribute__((used)) static void ti_sci_inta_mask_irq(struct irq_data *data)
{
 ti_sci_inta_manage_event(data, VINT_ENABLE_CLR_OFFSET);
}
