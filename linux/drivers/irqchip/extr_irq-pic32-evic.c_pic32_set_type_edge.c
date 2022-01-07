
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;
struct evic_chip_data {scalar_t__* ext_irqs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EBADR ;
 int IRQ_SET_MASK_OK ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 struct evic_chip_data* irqd_to_priv (struct irq_data*) ;
 int pic32_set_ext_polarity (int,unsigned int) ;

__attribute__((used)) static int pic32_set_type_edge(struct irq_data *data,
          unsigned int flow_type)
{
 struct evic_chip_data *priv = irqd_to_priv(data);
 int ret;
 int i;

 if (!(flow_type & IRQ_TYPE_EDGE_BOTH))
  return -EBADR;


 for (i = 0; i < ARRAY_SIZE(priv->ext_irqs); i++) {
  if (priv->ext_irqs[i] == data->hwirq) {
   ret = pic32_set_ext_polarity(i, flow_type);
   if (ret)
    return ret;
  }
 }

 irqd_set_trigger_type(data, flow_type);

 return IRQ_SET_MASK_OK;
}
