
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
typedef enum pdc_irq_config_bits { ____Placeholder_pdc_irq_config_bits } pdc_irq_config_bits ;


 int EINVAL ;





 int IRQ_i_CFG ;
 int PDC_EDGE_DUAL ;
 int PDC_EDGE_FALLING ;
 int PDC_EDGE_RISING ;
 int PDC_LEVEL_HIGH ;
 int PDC_LEVEL_LOW ;
 int WARN_ON (int) ;
 int irq_chip_set_type_parent (struct irq_data*,unsigned int) ;
 int pdc_reg_write (int ,int,int) ;

__attribute__((used)) static int qcom_pdc_gic_set_type(struct irq_data *d, unsigned int type)
{
 int pin_out = d->hwirq;
 enum pdc_irq_config_bits pdc_type;

 switch (type) {
 case 130:
  pdc_type = PDC_EDGE_RISING;
  break;
 case 131:
  pdc_type = PDC_EDGE_FALLING;
  type = 130;
  break;
 case 132:
  pdc_type = PDC_EDGE_DUAL;
  type = 130;
  break;
 case 129:
  pdc_type = PDC_LEVEL_HIGH;
  break;
 case 128:
  pdc_type = PDC_LEVEL_LOW;
  type = 129;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 pdc_reg_write(IRQ_i_CFG, pin_out, pdc_type);

 return irq_chip_set_type_parent(d, type);
}
