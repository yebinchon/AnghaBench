
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {int lock; } ;
struct irq_data {int hwirq; } ;


 int EINVAL ;





 unsigned int PDC_SYS_WAKE_BASE ;
 unsigned int PDC_SYS_WAKE_INT_CHANGE ;
 unsigned int PDC_SYS_WAKE_INT_DOWN ;
 unsigned int PDC_SYS_WAKE_INT_HIGH ;
 unsigned int PDC_SYS_WAKE_INT_LOW ;
 unsigned int PDC_SYS_WAKE_INT_MODE ;
 unsigned int PDC_SYS_WAKE_INT_MODE_SHIFT ;
 unsigned int PDC_SYS_WAKE_INT_UP ;
 unsigned int PDC_SYS_WAKE_STRIDE ;
 unsigned int hwirq_to_syswake (int ) ;
 int irq_setup_alt_chip (struct irq_data*,unsigned int) ;
 struct pdc_intc_priv* irqd_to_priv (struct irq_data*) ;
 unsigned int pdc_read (struct pdc_intc_priv*,unsigned int) ;
 int pdc_write (struct pdc_intc_priv*,unsigned int,unsigned int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int syswake_irq_set_type(struct irq_data *data, unsigned int flow_type)
{
 struct pdc_intc_priv *priv = irqd_to_priv(data);
 unsigned int syswake = hwirq_to_syswake(data->hwirq);
 unsigned int irq_mode;
 unsigned int soc_sys_wake_regoff, soc_sys_wake;


 switch (flow_type) {
 case 132:
  irq_mode = PDC_SYS_WAKE_INT_CHANGE;
  break;
 case 130:
  irq_mode = PDC_SYS_WAKE_INT_UP;
  break;
 case 131:
  irq_mode = PDC_SYS_WAKE_INT_DOWN;
  break;
 case 129:
  irq_mode = PDC_SYS_WAKE_INT_HIGH;
  break;
 case 128:
  irq_mode = PDC_SYS_WAKE_INT_LOW;
  break;
 default:
  return -EINVAL;
 }

 raw_spin_lock(&priv->lock);


 soc_sys_wake_regoff = PDC_SYS_WAKE_BASE + syswake*PDC_SYS_WAKE_STRIDE;
 soc_sys_wake = pdc_read(priv, soc_sys_wake_regoff);
 soc_sys_wake &= ~PDC_SYS_WAKE_INT_MODE;
 soc_sys_wake |= irq_mode << PDC_SYS_WAKE_INT_MODE_SHIFT;
 pdc_write(priv, soc_sys_wake_regoff, soc_sys_wake);


 irq_setup_alt_chip(data, flow_type);

 raw_spin_unlock(&priv->lock);

 return 0;
}
