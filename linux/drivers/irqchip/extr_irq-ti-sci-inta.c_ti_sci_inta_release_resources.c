
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_inta_event_desc {int dummy; } ;
struct irq_data {int hwirq; } ;


 struct ti_sci_inta_event_desc* irq_data_get_irq_chip_data (struct irq_data*) ;
 int ti_sci_inta_free_irq (struct ti_sci_inta_event_desc*,int ) ;

__attribute__((used)) static void ti_sci_inta_release_resources(struct irq_data *data)
{
 struct ti_sci_inta_event_desc *event_desc;

 event_desc = irq_data_get_irq_chip_data(data);
 ti_sci_inta_free_irq(event_desc, data->hwirq);
}
